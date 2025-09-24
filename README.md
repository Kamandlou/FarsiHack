# FarsiHack

**FarsiHack** is a fun and useful tool that lets you run Linux commands typed in Persian (by mistake or on purpose 😄).  
It maps Persian-typed commands to their real Linux counterparts using a simple JSON file and Bash aliases.

---

## ✨ Features

- Define Linux command aliases with Persian text.
- Uses a JSON file for easy configuration.
- Works with **Bash** and **Zsh**.
- Lightweight and fast (uses [`jq`](https://stedolan.github.io/jq/)).

---

## 📦 Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/your-username/FarsiHack.git
   cd FarsiHack
   ```

2. Make the installer executable:
    ```bash
   chmod +x farsihack.sh
    ```
3. Load aliases into the current terminal session:
    ```bash
   source ./farsihack.sh
   ```
   Now aliases are available right away in this shell.
4. To make aliases persistent for this user, add the same `source` line to your shell startup file:
    - For Bash:
    ```bash
     echo 'source /full/path/to/FarsiHack/farsihack.sh' >> ~/.bashrc
     source ~/.bashrc
     ```
    - For Zsh:
   ```bash
   echo 'source /full/path/to/FarsiHack/farsihack.sh' >> ~/.zshrc
   source ~/.zshrc
   ```
   Replace `/full/path/to/FarsiHack` with the actual path where you cloned the repo (use `pwd` to get it).