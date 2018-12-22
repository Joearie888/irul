#!/system/xbin/bash
clear
n="\033[0m" # normal
c="\033[90m" # coklat
m="\033[91m" # merah
h="\033[92m" # hijau
k="\033[93m" # kuning
u="\033[94m" # ungu
p="\033[95m" # pink
b="\033[96m" # biru
sh 0
echo "$u                    ╔═══════════╗
                    ║$k Pembaruan$u ║
                    ╚═══════════╝

╔═╗
║"$n"›"$u"║$b Menu Yang Tersedia :$u
║ ║
║"$n"1"$u"║$h Memperbarui Data-Data Script$u
║"$n"2"$u"║$k Memperbarui Data-Data Termux$u
║"$n"9"$u"║$c Kembali$u
║ ║"
echo -n "║"$n"›"$u"║$b Pilih Nomor :$h " 
read irul
echo $u"╚═╝$n"
termux-tts-speak $irul

if [ $irul = 01 ] || [ $irul = 1 ]
then
clear
cd ..
rm -rf irul
git clone https://github.com/jekitut/irul
cd irul
sh irul
fi

if [ $irul = 02 ] || [ $irul = 2 ]
then
clear
pkg update
pkg upgrade
pkg install figlet
pkg install mc -y
pkg install mpv -y
pkg install nano
pkg install php -y
pkg install python -y
pkg install python2 -y
pkg install python2-dev -y
pkg install ruby -y
pkg install termux-api
pip install --upgrade pip
pip install mps_youtube
pip install youtube_dl
pip2 install mechanize
pip2 install requests
pip2 install uncompyle6
gem install lolcat
sh irul
fi

if [ $irul = 09 ] || [ $irul = 9 ]
then
sh irul
fi

termux-tts-speak Nomor Yang Anda Masukkan Salah
termux-tts-speak Silahkan Hubungi Pembuat Script Ini
sh p