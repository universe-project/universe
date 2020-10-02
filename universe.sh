#!/bin/sh

# Обновление системы
sudo apt update
sudo apt upgrade -y

# Установка необходимых библиотек
sudo apt-get install qt5-default qt5-qmake qtbase5-dev-tools qttools5-dev-tools \
build-essential libboost-dev libboost-system-dev \
libboost-filesystem-dev libboost-program-options-dev libboost-thread-dev \
libssl-dev libdb++-dev -y

# Небольшая дороботка для устранения ошибки при компиляции
sudo apt-get remove qt3-dev-tools libqt3-mt-dev -y
sudo apt-get install libqt4-dev libminiupnpc-dev -y

# Увеличения файла подкачки до 2 гигабайт
sudo fallocate -l 2G /swapfile
# Обеспечиваю безопасть файла утсанавливаю нужные права.
sudo chmod 600 /swapfile
# Заставляю систему использовать созданый swap файл
sudo mkswap /swapfile
# Активирую swap файл
sudo swapon /swapfile
# Сохранение изменений после перезагрузки
sudo cp /etc/fstab /etc/fstab.back
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab

# Установка Git
sudo apt install git

# Копируем каталог на устройство для будущей компиляции
git clone https://github.com/universe-project/universe.git

# Даю права папки
chmod 777 universe

# Установка BarkleyDb
wget http://download.oracle.com/berkeley-db/db-4.8.30.NC.tar.gz
tar -xzvf db-4.8.30.NC.tar.gz
cd db-4.8.30.NC/build_unix/../dist/configure --enable-cxx
make -j2
sudo make install


# Компиляция кошелька
cd universe
qmake
make -j2

# Очишения файла от откладочной информации
strip universe-qt

# Создания ярлыка на рабочем столе
cd
cd Desktop
echo "[Desktop Entry]
Version=2.0
Name=Universe
Comment=Universe Wallet
Exec=universe/universe-qt
Icon=/home/pi/universe/src/qt/res/icons/uni.ico
Terminal=false
Type=Application
StartupNotify=true
Categories=BlockChain"> Universe.desktop
