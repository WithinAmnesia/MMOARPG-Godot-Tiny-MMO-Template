 # Godot Tiny MMO Demo

A minimalistic MMO demo built using the Godot Engine 4.3.  
Feel free to take a look at my ![Wiki](https://github.com/SlayHorizon/godot-tiny-mmo-demo/wiki) to better understand the project.

Old screenshot showing 16 clients at the same time on multiple different instances:  
![M.M.O.A.R.P.G. (V.000.007) Godot-Tiny-MMO-Template-0.0.3 Godot 4.3 NET+ Dungeon Gathering Online (0)(Frontpage Github Contributor)(Image showing the early state of the project)](https://github.com/user-attachments/assets/017df4d6-a6fa-465c-a9ea-d74cf1c27393)
Login menu:  
![login-menu-screenshot](https://github.com/user-attachments/assets/3d47c8e1-ace1-4452-83b5-a4d73584fdc4)

## Project Goals

The list below indicates the current progress and goals:

- [X] **Client-Server connection through WebSocketMultiplayerPeer.**
- [ ] **Client side working on web browser.**
- [X] **Authentication steps before connecting.**
- [x] **Login UI to authenticate.**
- [X] **Synchronizing entities among the players in the same instance.**
- [X] **Hosting different map instances on a single server and allowing traveling between them.**
- [ ] **Basic RPG class system with 3 classes to get started with: Knight, Rogue, Wizard.**
- [ ] **Private instance for individual players or groups.**
- [ ] **Mobs hosted and managed by the server.**
- [ ] **Basic combat system with PvE and PvP.**
- [ ] **Experience and leveling systems.**
- [ ] **Entity interpolation (rubber banding).**
- [ ] **Server clock.**
- [ ] **Instance based chat.**
- [ ] **Saving persistent data on the server.**

And maybe more later.

See the [open issues](https://github.com/SlayHorizon/godot-tiny-mmo-template/issues) for a full list of proposed features (and known issues).  

## Getting Started

To get started with the project:
1. Clone this repository.
2. Launch it with Godot 4.3.
3. In Debug tab, choose "Customizable Run Instance...".
4. Enable Multiple Instances and set at least 2 or more..
5. Under feature tags, be sure to have only 1 "server" tag and at least 1 or more "client" tag.
6. Play the project.

Example:  
![multiple-instances-screenshot](https://github.com/user-attachments/assets/07b0b609-3712-4e3d-bbe0-f5151ddfe8a6)

## Contributing

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## Contributors & Credits.
<a href = "https://github.com/SlayHorizon/simple-sqlite/graphs/contributors">
  <img src = "https://contrib.rocks/image?repo=SlayHorizon/godot-tiny-mmo-demo"/>
</a>  

Screen shots from @WithinAmnesia.  
Also thanks to [@Anokolisa](https://anokolisa.itch.io/dungeon-crawler-pixel-art-asset-pack) for allowing us to use its assets for an open source project!
