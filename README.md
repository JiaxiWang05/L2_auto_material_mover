This design project outlines the development of an automated material mover; designed to move up to two tonnes of load around a factory environment. Elements of the factory design are to be considered. This may result in a range of parameters that combined with the material mover itself produces a commercially viable goods handling ecosystem. As the world approaches the fourth industrial revolution it is becoming increasingly important for companies to automate their manufacturing and supply facilities. A key area for focus in a fully automated production facility is the link between supplier delivery, component storage, and manufacturing or assembly areas. This is often overlooked - conventional manned forklifts, either Internal Combustion or battery-electric, are still widely used in industrial facilities, and herein lies the design opportunity. The device designed will aim to disrupt this market; while it shares its silhouette with such nonautomated products, and as such shares the versatility afforded by palletised goods, it also introduces a level of freedom by reducing the requirement for personnel. An outline of the factory layout and the communications between device and factory plans are a prime requirement 

```
function test() {
  console.log("This code will have a copy button to the right of it");
}
```

Step 1: ```Install Git```
Git is a tool that allows you to download code from GitHub and collaborate on projects. Follow the installation instructions based on your operating system:

```
Windows
```
Download Git:

Visit git-scm.com.
Click "Download for Windows" to get the Git installer.
Run the Installer:

Locate the downloaded file and double-click it to start the installation.
Follow the prompts, and keep the default settings.
At the end, Git Bash (a terminal window to use Git) will be installed. 
Verify Installation:

Open Git Bash (you can search for it in the Start menu).
Type git --version and press Enter. You should see a Git version number if it’s installed correctly.
```macOS```
Install Git via Homebrew (recommended):

Open Terminal (you can find it in Applications > Utilities).
Type the following command to install Git:
```
function test() {
  console.log("bash
Copy code
brew install git
Homebrew will install Git automatically.");
}```


Verify Installation:

In Terminal, type:
bash
Copy code
git --version
You should see the Git version number if it’s installed correctly.
Linux (Debian/Ubuntu)
Install Git using APT:

Open Terminal.
Type the following command:
bash
Copy code
sudo apt-get update
sudo apt-get install git
This command updates the package list and installs Git.
Verify Installation:

In Terminal, type:
bash
Copy code
git --version
You should see the Git version number if Git is installed.
Step 2: Clone the Project from GitHub
Cloning means downloading a project from GitHub to your computer. This step gets a copy of the project code and files so you can run and modify them.

Open a Terminal:

Windows: Open Git Bash.
macOS/Linux: Open Terminal.
Clone the Project:

Copy this command and paste it into your terminal:
bash
Copy code
git clone https://github.com/JiaxiWang05/L2_auto_material_mover.git
Press Enter. This command downloads a copy of the project into a new folder called L2_auto_material_mover in your current directory.
Navigate to the Project Folder:

After cloning, go into the folder to start working with the code by typing:
bash
Copy code
cd L2_auto_material_mover
Step 3: Setting Up the Microcontroller and Development Environment
Objective:
Prepare a Raspberry Pi 4 to use as a microcontroller for your project. You’ll install and configure software, set up the microcontroller to read sensor data, and control motors.

Requirements:
Raspberry Pi 4 with 4GB RAM (recommended for handling sensors and motors).
MicroSD card (32GB or more recommended).
MicroSD card reader to write the Raspberry Pi OS.
Power supply for the Raspberry Pi.
Monitor, keyboard, and mouse (optional for setup, though you can also use SSH).
Sensors and motors (specific ones depend on the project).
Step 1: Install the Raspberry Pi OS on a MicroSD Card
Download Raspberry Pi Imager:

Go to the Raspberry Pi website.
Download and install Raspberry Pi Imager for your operating system.
Prepare the SD Card:

Insert the MicroSD card into your card reader.
Open Raspberry Pi Imager.
Select the OS and SD Card:

Choose Raspberry Pi OS (32-bit) as the operating system.
Select your MicroSD card as the storage location.
Write the Image:

Click Write and wait for the process to complete. This will install the OS on the MicroSD card.
Insert the SD Card into the Raspberry Pi and power it on.

Step 2: Set Up the Raspberry Pi
Connect to the Pi:

Option 1: Monitor, Keyboard, and Mouse: Connect these peripherals to the Raspberry Pi.
Option 2: SSH (if headless setup): If you prefer a headless setup, enable SSH by adding an empty file named ssh to the boot folder of the SD card before inserting it into the Pi.
Update the System:

Open Terminal on the Raspberry Pi.
Run the following commands to ensure your OS is up to date:
bash
Copy code
sudo apt-get update
sudo apt-get upgrade
Step 3: Install Required Software for Sensor and Motor Control
Python (Most projects on Raspberry Pi use Python for hardware control):

Python should come pre-installed, but check with:
bash
Copy code
python3 --version
Install Python Libraries for Hardware Control:

Install libraries to interact with sensors and motors, such as RPi.GPIO and smbus for I2C communication:
bash
Copy code
sudo apt-get install python3-rpi.gpio python3-smbus
Set Up I2C Communication (for sensors that require it):

Open Raspberry Pi Configuration (from Preferences).
Go to the Interfaces tab and enable I2C.
Reboot the Raspberry Pi if prompted.
Step 4: Run the Project Code on the Raspberry Pi
Open Terminal on the Raspberry Pi:

You may have cloned the project on your Raspberry Pi or transferred it from your computer.
Navigate to the Project Folder:

Use the cd command to navigate to the project folder.
bash
Copy code
cd L2_auto_material_mover
Run the Code:

Read the project’s README.md for any specific commands.
If there’s a main script (e.g., main.py), run it using:
bash
Copy code
python3 main.py
Test the Setup:

Connect sensors and motors to see if they work as expected. The project’s README may include pin diagrams and specific sensor/motor setup details.
Step 5: Troubleshooting Tips
If Python packages aren’t found: Reinstall them using pip3 install package_name.
If the motor or sensor doesn’t respond: Double-check wiring connections and ensure they match the pin configuration in your code
