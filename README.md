Hi My design group
---

This design project focuses on developing an **automated material mover** capable of transporting up to **two tonnes** of load within a factory environment. The goal is to design a commercially viable goods-handling ecosystem that integrates with factory layouts and streamlines movement between supplier delivery, storage, and assembly areas. As industries push towards greater automation in the fourth industrial revolution, this project aims to replace conventional forklifts with a system that reduces reliance on personnel and optimizes workflow.

### Code Example
```javascript
function test() {
  console.log("This code will have a copy button to the right of it");
}
```

---

## Step 1: Install Git

Git allows you to download code from GitHub and collaborate on projects. Follow the instructions below based on your operating system.

### Windows

1. **Download Git**:  
   - Visit [git-scm.com](https://git-scm.com/).
   - Click **Download for Windows**.

2. **Run the Installer**:  
   - Double-click the downloaded file to start the installation.
   - Follow the prompts, keeping the default settings.
   - Git Bash (a terminal window for Git) will be installed.

3. **Verify Installation**:
   - Open Git Bash (you can search for it in the Start menu).
   - Type the following command to verify installation:
     ```bash
     git --version
     ```

### macOS

1. **Install Git via Homebrew (recommended)**:
   - Open **Terminal** (found in Applications > Utilities).
   - Run the command:
     ```bash
     brew install git
     ```

2. **Verify Installation**:
   - Run:
     ```bash
     git --version
     ```

### Linux (Debian/Ubuntu)

1. **Install Git using APT**:
   - Open **Terminal** and type:
     ```bash
     sudo apt-get update
     sudo apt-get install git
     ```

2. **Verify Installation**:
   - Run:
     ```bash
     git --version
     ```

---

## Step 2: Clone the Project from GitHub

Cloning downloads the project code and files to your computer.

1. **Open Terminal**:
   - **Windows**: Open Git Bash.
   - **macOS/Linux**: Open Terminal.

2. **Clone the Project**:
   - Run:
     ```bash
     git clone https://github.com/JiaxiWang05/L2_auto_material_mover.git
     ```

3. **Navigate to the Project Folder**:
   ```bash
   cd L2_auto_material_mover
   ```

---

## Step 3: Setting Up the Microcontroller and Development Environment

This setup prepares a **Raspberry Pi 4** to function as a microcontroller. You'll install software to control sensors and motors, essential for automated handling.

### Requirements
- **Raspberry Pi 4** (recommended with 4GB RAM)
- **MicroSD card** (32GB or larger recommended)
- **Power supply**, **monitor**, **keyboard**, and **mouse** (optional if using SSH)
- **Sensors** and **motors** (depending on project needs)

### Step 1: Install the Raspberry Pi OS on a MicroSD Card

1. **Download Raspberry Pi Imager**:
   - Visit the [Raspberry Pi website](https://www.raspberrypi.org/downloads/) to download the Raspberry Pi Imager.

2. **Prepare the SD Card**:
   - Insert the MicroSD card and open Raspberry Pi Imager.
   - Select **Raspberry Pi OS (32-bit)** as the OS.
   - Choose your MicroSD card as the storage location.
   - Click **Write**.

3. **Insert the SD Card and Power on the Raspberry Pi**.

### Step 2: Set Up the Raspberry Pi

1. **Connect to the Pi**:
   - **Option 1**: Use a monitor, keyboard, and mouse.
   - **Option 2 (Headless Setup)**: Enable SSH by creating an empty file named `ssh` in the boot folder of the SD card.

2. **Update the System**:
   - Open Terminal on the Raspberry Pi and run:
     ```bash
     sudo apt-get update
     sudo apt-get upgrade
     ```

### Step 3: Install Required Software for Sensor and Motor Control

1. **Check Python Installation**:
   ```bash
   python3 --version
   ```

2. **Install Libraries for Hardware Control**:
   ```bash
   sudo apt-get install python3-rpi.gpio python3-smbus
   ```

3. **Set Up I2C Communication (if needed)**:
   - Open **Raspberry Pi Configuration** (under Preferences).
   - Go to **Interfaces** and enable **I2C**.
   - Reboot if prompted.

---

## Step 4: Run the Project Code on the Raspberry Pi

1. **Navigate to the Project Folder**:
   ```bash
   cd L2_auto_material_mover
   ```

2. **Run the Code**:
   - Read the project's `README.md` for specific instructions.
   - If there’s a main script, run it:
     ```bash
     python3 main.py
     ```

3. **Test the Setup**:
   - Connect sensors and motors to confirm everything works as expected. Refer to the `README` for pin diagrams and setup details.

---

## Step 5: Troubleshooting Tips

- **If Python packages aren’t found**: Reinstall them using `pip3`:
  ```bash
  pip3 install package_name
  ```

- **If the motor or sensor doesn’t respond**: Check wiring connections and ensure they match the configuration in your code.

---

This layout provides clear sections and formatted code blocks, making it easier to follow along!
