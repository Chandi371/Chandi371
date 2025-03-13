# Heaviest Windows-Like Environment for Termux  
This script sets up a **full-featured Windows-like environment** in Termux, using **MATE Desktop, Wine, Box86/Box64, and full dependencies** for the best performance.  

## 🔹 Features  
- **MATE Desktop** (Lightweight but full-featured desktop)  
- **Wine** (Run Windows applications)  
- **Box86 & Box64** (Run x86/x86_64 applications)  
- **VNC Support** (Remote desktop access)  
- **Full Dependencies Installed** (No manual setup required)  

## 🔹 Installation  
1. Clone this repository:

git clone https://github.com/Chandi371/Chandi371.git cd Chandi371

2. Give execution permission:

chmod +x install-windows.sh

3. Run the script:

bash install-windows.sh

## 🔹 How to Start MATE Desktop  
After installation, run:

vncserver

Then, use a **VNC Viewer** (like VNC Viewer or bVNC) to connect to `localhost:1`.  

## 🔹 Notes  
- If you want to stop VNC, run:

vncserver -kill :1

- If you face network issues, restart Termux and run:

vncserver

## 🔹 Support  
For any issues, feel free to open an **issue** in this repository.  

---

This README is now ready for upload. Let me know if you need any more changes!

