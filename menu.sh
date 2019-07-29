echo -e "\033[1;92m"
echo "_ _ _ _  _ ____ ___ ____ ____ ___  ___  
| | | |__| |__|  |  [__  |__| |__] |__] 
|_|_| |  | |  |  |  ___] |  | |    |   "
echo -e "\033[1;93m"
echo "_  _ ____ _  _ _  _ 
|\/| |___ |\ | |  | 
|  | |___ | \| |__| "
echo
echo -e "\033[1;96m"
echo "Rooted package"
echo
echo "1.Whatsapp Clear Data"
echo "2.Whatsapp All Chat delete"
echo "3.Whatsapp Uninstall"
echo "4.Whatsapp Stickers Delete"
echo "5.Whatsapp Log Delete"
echo "6.Copy Whatsapp Logs"
echo "7.Copy Whatsapp Stickers"
echo "8.Copy Whatsapp Avatars"
echo "9.Whatsapp Avatars Delete"
echo "10.Whatsapp Chat Backup"
echo "11.Whatsapp Chat Restore"
echo "12.Whatsapp setting Update"
echo
echo -e "\033[1;93m"
echo "Without Root"
echo
echo "13.Whatsapp Anti-Ban Method in hindi"


echo -e "\e[1;91m"
read -p 'select_option >' opt
echo -e "\e[1;93m"

if [ $opt -eq 1 ];then
echo -e "\033[1;93m"
clear
echo "please wait...."
tsu -c rm -Rf /data/data/com.whatsapp/*
sleep 5
echo
echo "Successfully cleared data"
sleep 2
bash menu.sh
fi
if [ $opt -eq 2 ];then
echo -e "\033[1;93m"
clear
echo "please wait......."
tsu -c rm -f /data/data/com.whatsapp/databases/msgstore.db
sleep 5
echo "successfully chat deleted"
sleep 2
bash menu.sh
fi
if [ $opt -eq 3 ];then
echo -e "\033[1;93m"
clear
echo "please wait......"
tsu -c rm -Rf /data/app/com.whatsapp*
sleep 5
echo "Successfully uninstalled (reboot needed)"
sleep 2
bash menu.sh
fi
if [ $opt -eq 4 ];then
echo -e "\033[1;93m"
clear
echo "please wait....."
tsu -c rm -Rf /data/data/com.whatsapp/files/Stickers
tsu -c rm -f /data/data/com.whatsapp/databases/stickers.db
sleep 5
echo "Successfully deleted stickers"
sleep 2
bash menu.sh
fi
if [ $opt -eq 5 ];then
clear
echo -e "\033[1;93m"
echo "please wait......."
tsu -c rm -Rf /data/data/com.whatsapp/files/Logs
sleep 5
echo "Successfully deleted Whatsapp Logs"
sleep 2
bash menu.sh
fi
if [ $opt -eq 6 ];then
clear
echo -e "\033[1;93m"
echo "please wait......"
tsu -c cp -Rf /data/data/com.whatsapp/files/Logs /sdcard/WHATSAPP-FILES/Logs
sleep 5
echo "Successfully Copied Whatsapp Logs in WHATSAPP-FILES"
sleep 2
bash menu.sh
fi
if [ $opt -eq 7 ];then
echo -e "\033[1;93m"
clear
echo "please wait........"
tsu -c cp -Rf /data/data/com.whatsapp/files/Stickers /sdcard/WHATSAPP-FILES
echo "Successfully Copied Stickers in WHATSAPP-FILES"
sleep 2
bash menu.sh
fi
if [ $opt -eq 8 ];then
clear
echo -e "\033[1;93m"
echo "please wait......."
tsu -c cp -Rf /data/data/com.whatsapp/files/Avatars /sdcard/WHATSAPP-FILES/Avatars
sleep 5
echo "Successfully Copied Whatsapp Avatars in WHATSAPP-FILES"
sleep 2
bash menu.sh
fi
if [ $opt -eq 9 ];then
clear
echo -e "\033[1;93m"
echo "please wait......."
tsu -c rm -Rf /data/data/com.whatsapp/files/Avatars
sleep 5
echo "Successfully Deleted Whatsapp Avatars"
sleep 2
bash menu.sh
fi
if [ $opt -eq 10 ];then
echo "Please wait......"
tsu -c cp -f /data/data/com.whatsapp/databases/msgstore.db /sdcard/WHATSAPP-FILES
sleep 3
echo "Successfully Backuped"
fi
if [ $opt -eq 11 ];then
echo "please wait....."
tsu -c cp -f /sdcard/WHATSAPP-FILES/msgstore.db /data/data/com.whatsapp/databases
echo "Successfully restored"
fi
if [ $opt -eq 12 ];then
echo "please wait......"
rm -Rf $HOME/Whatsapp-Settings
cd $HOME
git clone https://github.com/android-rooted/Whatsapp-Settings
cd Whatsapp-Settings
bash set.sh
fi

if [ $opt -eq 13 ];then
clear
echo -e "\033[1;96m"
sleep 2
echo -e "\033[1;96m"
echo "WHATSAPP ANTI-BAN KE LIYE SABSE PHLE OFFICIAL WHATSAPP INSTALL KRO OR APNA NUMBER KHOLO USME USKE BAD TITANIUM BACKUP DOWNLOAD KRO FIR TITANIUM BACKUP SE WHATSAPP KA BACKUP LO FIR WHATSAPP UNINSTALL KR DO FIR KOI V MODDED WHATSAPP DOWNLOAD KRO LEKIN USKA PACKAGE NAME com.whatsapp HONA CHAHIYE WO INSTALL KRO FIR TITANIUM BACKUP SE RESTORE KRO OR USKE BAD TUMHARA WHATSAPP MODDED WHATSAPP ME KHUL JAYEGA LEKIN VERIFY OFFICIAL ME RHNE KE KARN WHATSAPP BAN NHI HOGA."
fi
