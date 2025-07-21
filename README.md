# settlers-server
 Contains the compiled resources for running a PaperMC server for MC Settlers

# Setup Instructions 
## Set Up/Update Java Development Kit (JDK)

1. Run `java -version` in a terminal to make sure you have a working version of Java in version 21
2. If needed, download and install JDK (21 recommended) at [this location](https://www.oracle.com/java/technologies/downloads/#jdk21-mac)
    1. If you have a silicon mac, [just click here](https://download.oracle.com/java/21/latest/jdk-21_macos-aarch64_bin.dmg)
    2. Open the download file and install it following instructions for your OS
    3. Alternatively, if on mac, use `brew install openjdk@17` (preceded by `brew uninstall openjdk` if needed)

## Set up other dependencies

```bash
brew install jq
```

## Java Plugin VSCode Setup (if writing code)

1. Open the `source/java/mc-settlers` directory in VSCode
2. Install some/all of the following VSCode extensions to make your life easier:
    1. Java extension pack by Microsoft: https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-pack 
    2. ESLint: https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint
    3. Intellisense Language Server for Java: https://marketplace.visualstudio.com/items?itemName=redhat.java
    4. Test Explorer (`hbenl.vscode-test-explorer`)
    5. Java Test (`vscjava.vscode-java-test`)

## Run Server

1. Open a terminal and navigate to where you pulled the repo
2. Go into `mc-settlers-source/bash` and run `.start.sh`
3. If all goes well, the script will hang at `Timings reset` , the server is active!

**Explanation**

- This script will first pull in the .jar file for the settlers plugin + source material for the datapack into the relevant locations
- It will then run a generated command to execute `server.jar`
    - *View generated command*
        
        ```bash
        java -Xms8192M -Xmx8192M -XX:+AlwaysPreTouch -XX:+DisableExplicitGC -XX:+ParallelRefProcEnabled -XX:+PerfDisableSharedMem -XX:+UnlockExperimentalVMOptions -XX:+UseG1GC -XX:G1HeapRegionSize=8M -XX:G1HeapWastePercent=5 -XX:G1MaxNewSizePercent=40 -XX:G1MixedGCCountTarget=4 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1NewSizePercent=30 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:G1ReservePercent=20 -XX:InitiatingHeapOccupancyPercent=15 -XX:MaxGCPauseMillis=200 -XX:MaxTenuringThreshold=1 -XX:SurvivorRatio=32 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -jar server.jar nogui
        ```
        

**Troubleshooting**

- **Issues when running on Linux**
    - You may experience issues running the scripts due to to the `\r` carriage returns, you may need to remove those or adjust your settings to exclude them
- If nothing happens, you may need to first install or [Set Up/Update Java Development Kit (JDK)](https://www.notion.so/Set-Up-Update-Java-Development-Kit-JDK-12c755b5bfdb803a95f7e312be1e6eec?pvs=21)
- If things still won’t work, recompile the .jar in [Java Plugin VSCode Setup (if writing code)](https://www.notion.so/Java-Plugin-VSCode-Setup-if-writing-code-12c755b5bfdb8039a849d944078401c6?pvs=21)
- You may have too new a version of Java running, type `java -version` to see what’s running.
- If you get `zip END header not found`, you may have run the start script while the .jar was being compiled

## Open Server in Minecraft

1. Open Minecraft in version `1.21` (TODO: Make compatible with more versions)
