# Atmosphère erstellen

Das Erstellen von Atmosphère ist ein sehr einfacher Prozess, der fast ausschließlich auf von der [devkitPro](https://devkitpro.org)-Organisation bereitgestellte Werkzeuge angewiesen ist.

## Abhängigkeiten

+ [devkitA64](https://devkitpro.org)
+ [devkitARM](https://devkitpro.org)
+ [Python 2](https://www.python.org) (Python 3 könnte auch funktionieren, dies wird jedoch nicht garantiert)
+ [LZ4](https://pypi.org/project/lz4)
+ [PyCryptodome](https://pypi.org/project/pycryptodome) (optional)
+ [hactool](https://github.com/SciresM/hactool)

## Anweisungen

1. Pacman installieren
    + `wget https://github.com/devkitPro/pacman/releases/download/v1.0.2/devkitpro-pacman.amd64.deb`
    + `sudo apt-get install gdebi-core`
    + `sudo gdebi devkitpro-pacman.amd64.deb`
1. devkitpro installieren
    + `sudo dkp-pacman -Syu`
    + `sudo dkp-pacman -S switch-dev switch-glm switch-libjpeg-turbo devkitARM devkitarm-rules hactool`
    + `echo export DEVKITPRO="/opt/devkitpro" >> .bashrc`
1. Python 2 installieren
    + `sudo apt install python2 zip`
    + `curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py`
    + `sudo python2 get-pip.py`
    + `pip install lz4 pycryptodome`
    + `sudo update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1`
1. Abschließend das Atmosphère-Repository klonen und `make` im Stammverzeichnis ausführen.
