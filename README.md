# Refim releases

Builds of Refim - Refi, your facilitator for reflecting and improving - and
the install scripts. Refim works through your own AI CLI; install and sign in
to [Claude Code](https://code.claude.com/docs/en/setup) first.

## Install

**Windows** (PowerShell):

```powershell
irm https://raw.githubusercontent.com/refim-org/releases/main/install.ps1 | iex
```

**macOS** (Terminal):

```bash
curl -fsSL https://raw.githubusercontent.com/refim-org/releases/main/install.sh | bash
```

Refim installs into your user folder, needs no admin rights, and keeps itself
up to date afterwards. Every build is signed; the app installs only updates
carrying a valid signature.

`latest.json` lists the newest build per app and platform.
