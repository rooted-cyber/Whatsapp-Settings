echo -e "\033[1;92m"
echo "_ _ _ _  _ ____ ___ ____ ____ ___  ___  
| | | |__| |__|  |  [__  |__| |__] |__] 
|_|_| |  | |  |  |  ___] |  | |    |   "
echo -e "\033[1;93m"
echo "_  _ ____ _  _ _  _ 
|\/| |___ |\ | |  | 
|  | |___ | \| |__| "
echo
echo -e "\033[1;92m"
echo "		Rooted package >>>"
echo
echo
echo -e "\033[1;96m"
echo "			[ 1 ] Whatsapp Clear Data"
echo
echo "			[ 2 ] Whatsapp All Chat delete"
echo
echo "			[ 3 ] Whatsapp Uninstall"
echo
echo "			[ 4 ] Whatsapp Stickers Delete"
echo
echo "			[ 5 ] Whatsapp Log Delete"
echo
echo "			[ 6 ] Copy Whatsapp Logs"
echo
echo "			[ 7 ] Copy Whatsapp Stickers"
echo
echo "			[ 8 ] Copy Whatsapp Avatars"
echo
echo "			[ 9 ] Whatsapp Avatars Delete"
echo
echo "			[ 10 ] Whatsapp Chat Backup"
echo
echo "			[ 11 ] Whatsapp Chat Restore"
echo
echo "			[ 12 ] Whatsapp setting Update"
echo
echo "			[ 13 ] Whatsapp Stickers Backup"
echo
echo "			[ 14 ] Whatsapp Stickers Restore"
echo
echo -e "\033[1;94m"
echo "		Without Root >>>"
echo
echo
echo "			[ 15 ] Whatsapp Anti-Ban Method in hindi"
echo
echo -e "\033[92m◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆ \033[1;96m16.Exit \033[1;92m◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆◆"


echo -e "\e[1;91m"
read -p '	Whatsapp >>' opt
echo -e "\e[1;93m"

if [ $opt -eq 1 ];then
echo -e "\033[1;93m"
clear
echo "please wait...."
rm -Rf /data/data/com.whatsapp/*
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
rm -f /data/data/com.whatsapp/databases/msgstore.db
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
rm -Rf /data/data/com.whatsapp/files/Stickers
rm -f /data/data/com.whatsapp/databases/stickers.db
sleep 5
echo "Successfully deleted stickers"
sleep 2
bash menu.sh
fi
if [ $opt -eq 5 ];then
clear
echo -e "\033[1;93m"
echo "please wait......."
rm -Rf /data/data/com.whatsapp/files/Logs
sleep 5
echo "Successfully deleted Whatsapp Logs"
sleep 2
bash menu.sh
fi
if [ $opt -eq 6 ];then
clear
echo -e "\033[1;93m"
echo "please wait......"
cp -Rf /data/data/com.whatsapp/files/Logs /sdcard/WHATSAPP-FILES/Logs
sleep 5
echo "Successfully Copied Whatsapp Logs in WHATSAPP-FILES"
sleep 2
bash menu.sh
fi
if [ $opt -eq 7 ];then
echo -e "\033[1;93m"
clear
echo "please wait........"
cp -Rf /data/data/com.whatsapp/files/Stickers /sdcard/WHATSAPP-FILES
echo "Successfully Copied Stickers in WHATSAPP-FILES"
sleep 2
bash menu.sh
fi
if [ $opt -eq 8 ];then
clear
echo -e "\033[1;93m"
echo "please wait......."
cp -Rf /data/data/com.whatsapp/files/Avatars /sdcard/WHATSAPP-FILES/Avatars
sleep 5
echo "Successfully Copied Whatsapp Avatars in WHATSAPP-FILES"
sleep 2
bash menu.sh
fi
if [ $opt -eq 9 ];then
clear
echo -e "\033[1;93m"
echo "please wait......."
rm -Rf /data/data/com.whatsapp/files/Avatars
sleep 5
echo "Successfully Deleted Whatsapp Avatars"
sleep 2
bash menu.sh
fi
if [ $opt -eq 10 ];then
echo "Please wait......"
cp -f /data/data/com.whatsapp/databases/msgstore.db /sdcard/WHATSAPP-FILES
sleep 3
echo "Successfully Backuped"
Whatsapp
fi
if [ $opt -eq 11 ];then
echo "please wait....."
cp -f /sdcard/WHATSAPP-FILES/msgstore.db /data/data/com.whatsapp/databases
echo "Successfully restored"
Whatsapp
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
echo -e "\033[1;92m Backuping ........."
sleep 2
cp -Rf /data/data/com.whatsapp/files/Stickers /sdcard/WHATSAPP-FILES/BACKUP_STICKER
cp -f /data/data/com.whatsapp/databases/stickers.db /sdcard/WHATSAPP-FILES/BACKUP_STICKER
clear
echo -e "\033[1;93m Successfully Backuped"
Whatsapp
fi
if [ $opt -eq 14 ];then
clear
echo -e "\033[1;92m Restoring ........"
sleep 2
rm -f /data/data/com.whatsapp/databases/stickers.db
rm -Rf /data/data/com.whatsapp/files/Stickers
cp -f /sdcard/WHATSAPP-FILES/BACKUP_STICKER/stickers.db /data/data/com.whatsapp/databases
cp -Rf /sdcard/WHATSAPP-FILES/BACKUP_STICKER/Stickers /data/data/com.whatsapp/files
chmod 777 -R /data/data/com.whatsapp/files/Stickers
chmod 777 /data/data/com.whatsapp/databses/stickers.db
clear
echo -e "\033[96m Successfull Restored Stickers"
Whatsapp
fi
if [ $opt -eq 15 ];then
clear
echo -e "\033[1;96m"
sleep 2
echo -e "\033[1;96m"
echo "WHATSAPP ANTI-BAN KE LIYE SABSE PHLE OFFICIAL WHATSAPP INSTALL KRO OR APNA NUMBER KHOLO USME USKE BAD TITANIUM BACKUP DOWNLOAD KRO FIR TITANIUM BACKUP SE WHATSAPP KA BACKUP LO FIR WHATSAPP UNINSTALL KR DO FIR KOI V MODDED WHATSAPP DOWNLOAD KRO LEKIN USKA PACKAGE NAME com.whatsapp HONA CHAHIYE WO INSTALL KRO FIR TITANIUM BACKUP SE RESTORE KRO OR USKE BAD TUMHARA WHATSAPP MODDED WHATSAPP ME KHUL JAYEGA LEKIN VERIFY OFFICIAL ME RHNE KE KARN WHATSAPP BAN NHI HOGA."
fi
if [ $opt -eq 16 ];then
exit
exit
fi
