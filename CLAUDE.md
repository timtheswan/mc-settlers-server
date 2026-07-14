# mc-settlers-server — Server Runtime

PaperMC 1.21 server. Don't hand-edit compiled artifacts here — `plugins/Settlers.jar` and `world-*/datapacks/` are deployed from `mc-settlers-source` via `dev/serverctl.sh deploy` (or legacy `bash/sync_files.sh`).

## Key facts

- **Start/stop/console**: use `../mc-settlers-source/dev/serverctl.sh` (FIFO console at `.dev/console.in`, pid at `.dev/server.pid`). Legacy: `run-new-game.sh` (resets world + boots, 8G heap, foreground).
- **Config**: `server.properties` — port 25565, `online-mode=true`, `level-name=world-catan-board`, gamemode creative, nether/end disabled, RCON disabled. `spigot.yml` has `restart-on-crash: true` → `./start.sh` (script doesn't exist here — legacy artifact).
- **Plugins**: Settlers (ours) + WorldEdit 7.3.6 (structure templates need it), LuckPerms, DecentHolograms (vertex/edge holograms need it), spark (profiling), bStats.
- **Worlds**:
  - `world-catan-board` — the ACTIVE game world; gitignored; recreated each game by rsync from template.
  - `world-empty-catan-board` (19MB) — blank-slate template used for resets.
  - `world-catan-templates` (39MB) — contains the structure templates (tiles, settlements, etc.) that WorldEdit loads during board build. Keep its datapack in sync too.
  - `world-empty-catan-board-beaches` (43MB) — variant template, currently unreferenced by scripts.
- **Runtime state**: `gameData.json` (Gson-serialized Board; deleted on fresh start), `custom-board.json` (custom board shape: mapRadius + enabledTiles axial coords).
- **Logs**: `logs/latest.log` (gitignored, rotated by Paper). Plugin lines tagged `[SettlersPlugin]`.
- **Git**: repo tracks `server.jar` (49MB) and `libraries/` — heavy by design for pull-and-run simplicity; revisit for containerization.

## Gotchas

- `rsync --delete` world resets are destructive by design — only ever target `world-catan-board`.
- `online-mode=true` blocks offline/bot clients; a dev override is needed for headless bot testing (flag before changing — this repo is also the public distribution).
- Ops: single op `TheFormidableFoe` (level 4). Console has full permission regardless.
