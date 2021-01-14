# Linux Shell Programlama Projesi
## Gerekli Kurulumlar
Arayüz zenity ile programlanmıştır. Uygulamanın çalışabilmesi için bilgisayarınızda zenity kurulu olması gerekmektedir. Aşağıdaki komut çalıştırılarak kurulum sağlanabilmektedir;

``` bash
sudo apt-get install zenity
```

## Uygulama Kullanımı
Gerekli kurulumlar gerçekleştirildikten sonra aşağıdaki komut ile uygulama başlatılmaktadır.

``` bash
bash proje.sh
```

Uygulama çalıştırıldıktan sonra aşağıdaki ekran ile karşılaşılmaktadır;

![AnaEkran](https://user-images.githubusercontent.com/43981452/104592949-0d11b900-5680-11eb-8a10-eedd3d04b7df.PNG)

Uygulamada 5 adet işlem seçeneği bulunmaktadır. Bunlar şu şekildedir;

1. `Kayıt Ekle`
1. `Kayıt Ara`
1. `Kayıt Göster`
1. `Kayıt Sil`
1. `Çıkış Yap`

1- `Kayıt Ekle` işlemiyle uygulamaya yeni kullanıcı eklenebilmektedir. Bu işlem seçilip `Tamam` butonu tıklandığında aşağıdaki ekran ile karşılaşılmaktadır;

![kayıtekle1](https://user-images.githubusercontent.com/43981452/104593859-629a9580-5681-11eb-8f61-b9bcb1828c2b.PNG)

Bu ekranda text alanına kullanıcı bilgisi girilip `Tamam` butonu tıklandığında ekleme başarılı bir şekilde gerçekleştirildiyse kullanıcı bilgilendirilmektedir. Her eklenen   veride `kayıt.txt` adlı dosyada tutulmaktadır. 

![kayıtekle2](https://user-images.githubusercontent.com/43981452/104594425-2e73a480-5682-11eb-86a4-bc267285a64e.PNG)

`Kayıt Ekle` bölümünde text bölümü boş iken ekleme yapılmaya çalışıldığında veya herhangi bir işlem yapılmadan ekran kapatıldığında kullanıcı aşağıdaki şekilde bilgilendirilmektedir;

![kayıtekle3](https://user-images.githubusercontent.com/43981452/104595989-667be700-5684-11eb-838a-233ba2e69e4a.PNG)

2- `Kayıt Ara` işlemiyle `kayıt.txt` adlı dosya üzerinde kullanıcı araması yapılabilmektedir. Arama işleminin bu dosya üzerinde gerçekleştirilmesinin nedeni eklenen verilerin bu dosyada tutulmasıdır. Bu işlem seçilip `Tamam` butonu tıklandığında aşağıdaki ekran ile karşılaşılmaktadır;

![kayıtara1](https://user-images.githubusercontent.com/43981452/104597341-42210a00-5686-11eb-9d24-b10e9c6e80f2.PNG)

Bu ekranda text alanına kullanıcı bilgisi girilip `Tamam` butonu tıklandığında aranan eleman `kayıt.txt` dosyası içinde bulunuyorsa kullanıcı şu şekilde bilgilendirilmektedir;

![kayıtara2](https://user-images.githubusercontent.com/43981452/104597902-f6229500-5686-11eb-9f61-1cad645ee98e.PNG)

Eğer aranan eleman dosya içerisinde bulunmuyorsa kullanıcının karşılacağı ekran şu şekildedir;

![kayıtara3](https://user-images.githubusercontent.com/43981452/104598149-4994e300-5687-11eb-8dc3-1ce437eb69b1.PNG)

`Kayıt Ara` bölümünde text bölümü boş iken arama yapılmaya çalışıldığında veya herhangi bir işlem yapılmadan ekran kapatıldığında kullanıcı aşağıdaki şekilde bilgilendirilmektedir;

![kayıtara4](https://user-images.githubusercontent.com/43981452/104598288-734e0a00-5687-11eb-8705-7674f8a57c40.PNG)

3- `Kayıt Göster` işlemiyle kayıtlı olan kullanıcılar yani `kayıt.txt` dosyası kullanıcıya gösterilmektedir.  Bu işlem seçilip `Tamam` butonu tıklandığında aşağıdaki ekran ile karşılaşılmaktadır;

![kayıtgoster1](https://user-images.githubusercontent.com/43981452/104598845-19017900-5688-11eb-98e2-b882e860280b.PNG)

Eğer `kayıt.txt` dosyası boş ise kullanıcı bilgilendirilmektedir;

![kayıtgoster2](https://user-images.githubusercontent.com/43981452/104599005-4c440800-5688-11eb-829d-26a3aa047775.PNG)

4- `Kayıt Sil` işlemiyle `kayıt.txt` dosyasından kayıt silinebilmektedir. Bu işlem seçilip `Tamam` butonu tıklandığında aşağıdaki ekran ile karşılaşılmaktadır;

![kayıtsil1](https://user-images.githubusercontent.com/43981452/104599685-279c6000-5689-11eb-9973-b6008ee65d1b.PNG)

Bu ekranda text alanına silinmek istenen kayıt bilgisi girilip `Tamam` butonu tıklandığında silinmek istenen eleman `kayıt.txt` dosyası içinde bulunuyorsa eleman dosyadan silinerek kullanıcı şu şekilde bilgilendirilmektedir;

![kayıtsil2](https://user-images.githubusercontent.com/43981452/104600032-882b9d00-5689-11eb-8189-5fd54299264c.PNG)

Eğer silinmek istenen eleman dosya içinde bulunmuyorsa şu şekilde bir ekran ile karşılaşılmaktadır;

![kayıtsil3](https://user-images.githubusercontent.com/43981452/104600235-caed7500-5689-11eb-88e2-a218fffad705.PNG)

`Kayıt Sil` bölümünde text bölümü boş iken silme işlemi gerçekleştirilmeye çalışıldığında veya herhangi bir işlem yapılmadan ekran kapatıldığında kullanıcı aşağıdaki şekilde bilgilendirilmektedir;

![kayıtsil4](https://user-images.githubusercontent.com/43981452/104600440-0d16b680-568a-11eb-8350-b439671db526.PNG)

5- `Çıkış Yap` işlem seçilip `Tamam` butonu tıklandığında program sonlandırılarak kullanıcı bilgilendirilmektedir;

![çıkış](https://user-images.githubusercontent.com/43981452/104601239-0a689100-568b-11eb-8ef5-1a1b2a33d2b7.PNG)












