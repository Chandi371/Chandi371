#!/bin/bash

# ███████╗██╗   ██╗███████╗ █████╗ ██╗   ██╗███████╗████████╗
# ██╔════╝██║   ██║██╔════╝██╔══██╗██║   ██║██╔════╝╚══██╔══╝
# ███████╗██║   ██║███████╗███████║██║   ██║███████╗   ██║   
# ╚════██║██║   ██║╚════██║██╔══██║██║   ██║╚════██║   ██║   
# ███████║╚██████╔╝███████║██║  ██║╚██████╔╝███████║   ██║   
# ╚══════╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝   ╚═╝   
#          HEAVIEST WINDOWS-LIKE ENVIRONMENT FOR TERMUX
#         With MATE, Wine, Box86/Box64 & Full Dependencies
# -----------------------------------------------------------

# Clear the terminal for a clean start
clear

# STEP 1: UPDATE & UPGRADE PACKAGES
echo "Updating packages..."
apt update && apt upgrade -y
clear

# STEP 2: INSTALL REQUIRED REPOSITORIES
echo "Installing repositories..."
pkg install x11-repo -y
pkg install tur-repo -y
clear

# STEP 3: INSTALL PROOT DISTRO (For compatibility)
echo "Installing proot-distro..."
pkg install proot-distro -y
clear

# STEP 4: INSTALL GUI COMPONENTS
echo "Installing GUI components (MATE Desktop)..."
pkg install tigervnc mate-session-manager mate-panel mate-themes mate-terminal mate-control-center -y
clear

# STEP 5: INSTALL WINE & BOX86/BOX64
echo "Installing Wine, Box86, and Box64 for running Windows applications..."
pkg install wine wine32 box86 box64 -y
clear

# STEP 6: SET UP VNC SERVER
echo "Setting up VNC Server..."
mkdir -p ~/.vnc
echo "#!/bin/bash" > ~/.vnc/xstartup
echo "mate-session &" >> ~/.vnc/xstartup
chmod +x ~/.vnc/xstartup
clear

# STEP 7: FIX POTENTIAL NETWORK ISSUES
echo "Fixing potential network issues..."
echo 'nameserver 8.8.8.8' > /data/data/com.termux/files/usr/etc/resolv.conf
clear

# STEP 8: CONFIGURE .EXE FILE ASSOCIATION FOR WINE
echo "Configuring Wine to run .exe files..."
pkg install xdg-utils -y
xdg-mime default wine.desktop application/x-ms-dos-executable
clear

# STEP 9: START VNC SERVER
echo "Starting VNC Server..."
vncserver

# FINAL MESSAGE
echo "Setup complete! You can now connect to your MATE desktop using a VNC viewer."
echo "Run the following command anytime to start your GUI:"
echo "    vncserver"