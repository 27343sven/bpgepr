#!/bin/bash
cd $1
echo $SHELL > me

cat << doei > appToRun.desktop
[Desktop Entry]
Version=1.0
Type=Application
# hier geen terminal voor nodig
Terminal=false
Name=mainBuilder
# De naam van de productie
Comment=linkerFile
# A comment which can/will be used as a tooltip
# The path to the folder in which the executable is run
Exec=bash -c "cd \\\$(dirname \\\$1);\\\$(dirname \\\$1)/tclit;read me" dummy %k
# The executable of the application.
Icon=`pwd`/.superCoolLogo.png
# Dit desktop bestand is gemaakt met hulp van
# arch linux documentatie, Bedankt!
doei
chmod +x ./appToRun.desktop

cat << doei > devOnly.desktop
[Desktop Entry]
Version=1.0
Type=Application
# hier geen terminal voor nodig
Terminal=true
Name=This is for dev only
# De naam van de productie
Comment=linkerFile
# A comment which can/will be used as a tooltip
# The path to the folder in which the executable is run
Exec=bash -c "cd \\\$(dirname \\\$1);\\\$(dirname \\\$1)/tclit;read me" dummy %k
# The executable of the application.
Icon=`pwd`/.superCoolLogo.png
# Dit desktop bestand is gemaakt met hulp van
# arch linux documentatie, Bedankt!
doei
chmod +x ./devOnly.desktop

# volgend icon
cat << doei > displayThings.desktop
[Desktop Entry]
Version=1.0
Type=Application
# hier geen terminal voor nodig
Terminal=true
Name=displayBase
# De naam van de productie
Comment=idk
# A comment which can/will be used as a tooltip
# The path to the folder in which the executable is run
Exec=bash -c "cd \\\$(dirname \\\$1);\\\$(dirname \\\$1)/display;echo \"druk op een toets om te sluiten\";read -n1" dummy %k
# The executable of the application.
Icon=`pwd`/.superCoolLogo2.png
# Dit desktop bestand is gemaakt met hulp van
# arch linux documentatie, Bedankt!
doei
# was leuk, doei
chmod +x ./displayThings.desktop