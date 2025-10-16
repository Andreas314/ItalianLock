# 🇮🇹 ItalianLock

**ItalianLock** is a playful yet productive terminal lock for Linux systems.  
Before you can unlock your terminal, you must correctly translate **five Italian words**.  
Perfect for language learners who want to reinforce their vocabulary while keeping their workstation secure!

---

## 🧩 Features

- Locks your Linux terminal until you successfully translate **5 random Italian words**.
- Alternatively you can also switch mode to **conjugate a regular verb**.
- Uses configurable vocabulary lists.
- Supports easy management of vocabulary lists via the companion tool **`ILconfig`**.
- Lightweight, terminal-based, and fun to use!

---

## ⚙️ Installation

1. Clone the repository:
   ```bash
    git clone https://github.com/Andreas314/ItalianLock.git
   ```
2. Add following to your .bashrc file:
   ```bash
    location=location/of/the/files
    if [[ $ITALIAN_OFF -ne 1 ]]
    then
	exec $location/ConsoleWrapper.sh
    fi
    PATH="$PATH:$location/bin"
   ```
---

## 🚀 Usage

### Lock your terminal
To start the lock challenge, simply open the terminal after the installation.\
You will be prompted with **five English words**, and you must enter the correct **Italian translations** to unlock the terminal.

---

## 🧠 Configuring Vocabulary Lists with ILconfig

The `ILconfig` program lets you manage your vocabulary lists for ItalianLock.
### Switch Between Vocabulary And Conjugation
```bash
ILconfig switch MODE
```
MODE=0 Vocabulary translation\
MODE=1 Verb conjugation
### List Available Vocabulary Lists
```bash
ILconfig list_av
```
Displays all available vocabulary lists.

### Change Active Vocabulary List
```bash
ILconfig list_change LISTNAME
```
Switches ItalianLock to use the specified list.

### Add a Word to a List
```bash
ILconfig list_add LISTNAME ENGLISH ITALIAN
```
Adds a new English–Italian word pair to the chosen list.

**Example:**
```bash
ILconfig list_add basics hello ciao
```

### Remove a Word from a List
```bash
ILconfig list_remove LISTNAME ITALIAN
```
Removes a word from the specified list.

**Example:**
```bash
ILconfig list_remove basics ciao
```

