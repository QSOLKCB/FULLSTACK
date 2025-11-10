# ⚙️ FULLSTACK INSTALLATION GUIDE

Welcome, brave operator.  
You’ve chosen to install **FULLSTACK** — the meme that compiles.  
This document walks you through every stage of setup, from cloning the repo to verifying your workstation is now *technically sentient*.

---

## 🧰 Prerequisites

Before running anything that claims to automate “everything,” check these basics:

| Requirement | Why It Matters |
|--------------|----------------|
| 🐧 Arch Linux (or derivative) | This script speaks fluent `pacman`. |
| 🌐 Internet Connection | We’ll be pulling a *lot* of packages. |
| 🔑 `sudo` Access | Because installing things system-wide is a privilege. |
| 💾 10–20 GB Free Disk Space | Developers accumulate dependencies faster than dust. |
| ☕ Coffee | The only dependency that’s truly universal. |

---

## 🚀 Quick Start (Zero Brain Cells Required)

```bash
git clone https://github.com/QSOLKCB/FULLSTACK.git
cd FULLSTACK
chmod +x fullstack.sh
./fullstack.sh
That’s it. You’re now either a full-stack developer or a full-stack philosopher.
All output is logged to a timestamped file in your home directory, e.g.:

bash
Copy code
~/fullstack_20251111_0842.log
🧩 Installation Modes
You can choose how deep the madness goes.

Mode	Command	Description
Default (MEME-Stack)	./fullstack.sh	Installs everything: frontend, backend, AI, DSP, science, dev tools.
Lite Mode	./fullstack.sh --lite	Minimal install: skips heavy packages like Blender and TensorFlow.
No Audio	./fullstack.sh --no-audio	Headless systems only — skips PipeWire, Ardour, etc.
No AI	./fullstack.sh --no-ai	Keeps the machine dumb and predictable.
Interactive Mode	./fullstack.sh --ask	Prompts before each stack install.

🧠 What Happens During Installation
Environment Check

Tests your internet connection and verifies sudo access.

Sets up error handling (set -euo pipefail) and logging.

Core Stack Install

Installs git, neovim, docker, zsh, python, nodejs, etc.

Audio & DSP Stack

Optional. Installs pipewire, ardour, carla, easyeffects, etc.

Science Stack

Adds numpy, scipy, pandas, r, octave, texlive, etc.

AI Stack

Creates a Python virtual environment (~/ai_env).

Installs torch, tensorflow, librosa, and openai client tools.

Frontend / Web Dev

Installs Node.js, npm, pnpm, Vite, TailwindCSS, and React.

System Refresh

Restarts relevant services (systemctl daemon-reexec).

Reloads session daemons without reboot.

⚙️ Post-Install Configuration
After the script completes:

Restart your shell

bash
Copy code
exec zsh
Verify the installations

bash
Copy code
node -v && python --version && docker --version
(Optional) Add your new $PATH entries from ~/.bashrc or ~/.zshrc.

(Optional) Activate AI environment:

bash
Copy code
source ~/ai_env/bin/activate
🩺 Troubleshooting
Problem	Likely Cause	Quick Fix
sudo: command not found	Minimal Arch install missing sudo.	pacman -S sudo
Script stops early	Internet connection or repo mirror issue.	Try again with a mirror closer to you.
TensorFlow install fails	Out of RAM or missing CUDA drivers.	Skip AI stack with --no-ai.
No sound after reboot	PipeWire didn’t start.	systemctl --user restart pipewire
Existential dread	Overexposure to Bash.	Go outside. Touch grass.

🧩 Uninstall (a.k.a. Stack-Exorcism)
You can remove the installed packages manually or use your package manager:

bash
Copy code
sudo pacman -Rns $(cat installed_packages.txt)
rm -rf ~/ai_env
(If the script created an installed_packages.txt, it’ll contain the list.)

🪞 Philosophy of the Install
FULLSTACK isn’t just a build script.
It’s a statement about developer overreach and the joy of automation.

You don’t need Kubernetes to host your cat photo site.
You need a clean terminal, a good stack, and a sense of humor.

📜 License
MIT — copy, remix, fork, meme, or deploy.
Just don’t blame us if your terminal develops sentience.

QSOL-IMC / 2025
Truth compiled. Small is beautiful. Fast is holy.

yaml
Copy code
