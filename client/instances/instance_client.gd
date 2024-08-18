class_name InstanceClient
extends Node2D

## Base class for instances. Instances are used as a base of a multiplayer scene,
## which can contain a map, entities (NPCs, players, mobs, objects).

var entity_collection: Dictionary = {}

var last_state: Dictionary = {"T" = 0.0}

const LOCAL_PLAYER = preload("res://client/entities/local_player/local_player.tscn")
const DUMMY_PLAYER = preload("res://common/entities/player/base_player/player.tscn")

@rpc("authority", "call_remote", "unreliable", 0)
func fetch_instance_state(new_state: Dictionary):
	if new_state["T"] > last_state["T"]:
		last_state = new_state
		update_entity_collection(new_state["EC"]) #EC=EntityCollection

@rpc("any_peer", "call_remote", "unreliable", 0)
func fetch_player_state(_sync_state: Dictionary):
	pass

@rpc("authority", "call_remote", "reliable", 0)
func spawn_player(player_id: int, spawn_state: Dictionary) -> void:
	var new_player: Player
	if player_id == Client.peer_id:
		new_player = LOCAL_PLAYER.instantiate()
	else:
		new_player = DUMMY_PLAYER.instantiate()
	new_player.name = str(player_id)
	new_player.spawn_state = spawn_state
	
	entity_collection[player_id] = new_player
	
	add_child(new_player)

@rpc("authority", "call_remote", "reliable", 0)
func despawn_player(player_id: int) -> void:
	if entity_collection.has(player_id):
		(entity_collection[player_id] as Entity).queue_free()
		entity_collection.erase(player_id)

func update_entity_collection(collection_state: Dictionary) -> void:
	collection_state.erase(Client.peer_id)
	for entity_id: int in entity_collection:
		if collection_state.has(entity_id):
			(entity_collection[entity_id] as Entity).sync_state = collection_state[entity_id]

#@rpc("authority", "call_remote", "reliable", 0)
#func request_change_instance(new_instance: Dictionary) -> void:
	#for child in get_children():
		#child.queue_free()
	#name = new_instance["instance_name"]
	#var map: Node2D = load(new_instance["map_path"]).instantiate()
	#map.ready.connect(ready_to_enter_instance)
	#add_child(map)

@rpc("any_peer", "call_remote", "reliable", 0)
func ready_to_enter_instance() -> void:
	ready_to_enter_instance.rpc_id(1)
