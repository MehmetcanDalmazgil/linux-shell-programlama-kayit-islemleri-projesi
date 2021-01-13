#!/bin/bash

sayac=1
while [ $sayac == 1 ]
do
calistir=$(zenity --list \
--column="İşlemler" --column="Açıklama" \
KayıtEkle "Yeni kullanıcı ekleme bölümü." \
KayıtAra "Kayıtlı kullanıcı arama bölümü" \
KayıtGöster "Kayıtlı kullanıcıları listeleme bölümü" \
KayıtSil "Kayıtlı kullanıcı silme bölümü " \
ÇıkışYap "Programı sonlandırma bölümü ")

i=0

if [ $calistir == "KayıtEkle" ]
then
	i=`expr $i + 1`
	ekle=$(zenity --entry --title="Kayıt Ekle" --text="Kullanıcı Adını Giriniz : ")
	if [ ${#ekle} == 0 ]
	then
		zenity --info --text="Ekleme Gerçekleşmedi "
	else 
		zenity --info --text="Kayıt Ekleme Başarılı"
		echo $ekle >> kayıt.txt
	fi
fi

if [ $calistir == "KayıtAra" ]
then
	i=`expr $i + 1`
	ara=$(zenity --entry --title="Kayıt Ara" --text="Kullanıcı Adını Giriniz :")
	if [ ${#ara} == 0 ]
        then
	zenity --info --text "Arama Gerçekleşmedi"
	
	else
		kontrol=$(cat kayıt.txt | grep -w $ara)
		if [ ${#kontrol} == 0  ]
		then
		zenity --info --text "Kullanıcı Kayıtlarda Bulunmamaktadır"
		else
		zenity --info --text "Kullanıcı Kayıtlarda Bulunmaktadır"
		fi
	fi
fi

if [ $calistir == "KayıtGöster" ]
then
	i=`expr $i + 1`
	goster=$(cat kayıt.txt)
	if [ ${#goster} == 0 ]
	then
		zenity --info --text "Liste Boş"
	else
        	zenity --text-info --filename=kayıt.txt
	fi
fi

if [ $calistir == "KayıtSil" ]
then
	i=`expr $i + 1`
        sil=$(zenity --entry --title="Kayıt Sil" --text="Kullanıcı Adını Giriniz : ")
	
	if [ ${#sil} == 0 ]
	then
		zenity --info --text "Silme İşlemi Gerçekleşmedi"
	
	else
		kontrol=$(cat kayıt.txt | grep -w $sil)
		if [ ${#kontrol} == 0 ]
		then
			zenity --info --text "Eleman Listede Bulunmamaktadır"
		else 
	
			grep -v -w $sil  kayıt.txt > tmpfile && mv tmpfile kayıt.txt
			zenity --info --text="Silme İşlemi Gerçekleştirildi"
		fi
	fi
fi

if [ $calistir == "ÇıkışYap" ]
then
	sayac=0
	zenity --info --text="Çıkış Gerçekleştirildi." 

elif [  $i == 0 ]
then
	zenity --info --text="Çıkış Gerçekleştirildi." 
	exit
fi

done
