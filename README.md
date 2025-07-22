# Minecraft Settlers
MC Catan is a self-hostable Minecraft server for playing multiplayer games of Catan. It supports:
- The full ruleset of the board game, with a few key modifications to scale to large numbers of players
- Procedural generation of life-sized boards, with completely random tile placement
- Settlements, cities, robber, merchants, and trading (via in-person dropping)
- Can handle games with any number of players, with boards of size 4 player, 6 player, 8 player, 10 player, and 12 player
- Supports teams, with midgame joining
- Game runtime will be 45-90 minutes, regardless of player count, and can be modified by changing the day speed
- Dev cards are known as quests, and have a few house rules added (eg Corrupt Knight)
- Configurability of
  - Board size and shape
  - Victory points to win, amounts needed for longest road/strongest army
  - Day/night speed
  - Wealth level for robbery on 7
  - And more!

<img width="1920" height="1027" alt="2025-07-21_20 02 26" src="https://github.com/user-attachments/assets/a5f9b5ae-669f-4062-82cb-ba3624845d02" />

<img width="1920" height="1027" alt="2025-07-21_20 02 58" src="https://github.com/user-attachments/assets/9583ff3c-e6e6-46fa-a078-0c3becf4df41" />

<img width="1920" height="1027" alt="2025-07-21_20 03 41" src="https://github.com/user-attachments/assets/a916e4f4-118e-40ae-8289-ee904a81f40d" />

<img width="1920" height="1027" alt="2025-07-21_20 01 10" src="https://github.com/user-attachments/assets/d422090c-39d6-4af2-a8f0-b752c6a20ddc" />



# In Game Commands
`/help` Get a list of all server commands
`/game` Control the game board and state (create, start, next day)
`/team` Join, create, or leave teams
`/game changerule` modify game rules
`/rules` view game rules
`/tools` reset game tools (map, compass, item switcher, team chest, day voter, help book) if you're missing any 




This repository contains the compiled resources for running a PaperMC server for MC Settlers.

# Setup Instructions 
## Init
- Pull this repo
- For each new game you need to set up a fresh copy of `world-empty-catan-board` that is named exactly `world-catan-board`
- Then start the server by opening a terminal in this directory and running:
```
java -Xms8192M -Xmx8192M -XX:+AlwaysPreTouch -XX:+DisableExplicitGC -XX:+ParallelRefProcEnabled -XX:+PerfDisableSharedMem -XX:+UnlockExperimentalVMOptions -XX:+UseG1GC -XX:G1HeapRegionSize=8M -XX:G1HeapWastePercent=5 -XX:G1MaxNewSizePercent=40 -XX:G1MixedGCCountTarget=4 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1NewSizePercent=30 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:G1ReservePercent=20 -XX:InitiatingHeapOccupancyPercent=15 -XX:MaxGCPauseMillis=200 -XX:MaxTenuringThreshold=1 -XX:SurvivorRatio=32 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -jar server.jar nogui
```
- If all goes well, the script will hang at `Timings reset` , the server is active!

## Troubleshooting Java setup

1. Run `java -version` in a terminal to make sure you have a working version of Java in version 21
2. If needed, download and install JDK (21 recommended) at [this location](https://www.oracle.com/java/technologies/downloads/#jdk21-mac)
    1. If you have a silicon mac, [just click here](https://download.oracle.com/java/21/latest/jdk-21_macos-aarch64_bin.dmg)
    2. Open the download file and install it following instructions for your OS
    3. Alternatively, if on mac, use `brew install openjdk@17` (preceded by `brew uninstall openjdk` if needed)

## Set up other dependencies

```bash
brew install jq
```

- **Issues when running on Linux**
    - You may experience issues running the scripts due to to the `\r` carriage returns, you may need to remove those or adjust your settings to exclude them
- If nothing happens, you may need to first install or [Set Up/Update Java Development Kit (JDK)](https://www.notion.so/Set-Up-Update-Java-Development-Kit-JDK-12c755b5bfdb803a95f7e312be1e6eec?pvs=21)
- If things still won’t work, recompile the .jar in [Java Plugin VSCode Setup (if writing code)](https://www.notion.so/Java-Plugin-VSCode-Setup-if-writing-code-12c755b5bfdb8039a849d944078401c6?pvs=21)
- You may have too new a version of Java running, type `java -version` to see what’s running.
- If you get `zip END header not found`, you may have run the start script while the .jar was being compiled

## Open Server in Minecraft

1. Open Minecraft in version `1.21` (TODO: Make compatible with more versions)

# More Pictures
<img width="1920" height="1027" alt="2025-07-21_20 04 56" src="https://github.com/user-attachments/assets/de4a1df6-42d3-4ed1-be9a-e730b1c5463a" />

<img width="1920" height="1027" alt="2025-07-21_20 03 53" src="https://github.com/user-attachments/assets/e1e4409d-2fd2-4246-aeaa-c69849cb3efc" />
4:1 trading GUI (sleazy merchant)

<img width="1920" height="1027" alt="2025-07-21_20 14 21" src="https://github.com/user-attachments/assets/d72b7937-c951-46ef-80a5-34723cc7d32f" />


