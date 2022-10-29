# Analisis-Faktor

Analisis faktor merupakan salah satu keluarga analisis multivariat yang bertujuan untuk meringkas atau mereduksi variabel amatan secara keseluruhan menjadi beberapa variabel atau dimensi baru, akan tetapi variabel atau dimensi baru yang terbentuk tetap mampu merepresentasikan variabel utama.

Diberikan data persepsi 50 responden tentang penjualan Sepeda Motor di toko X (Santoso, 2002). Atribut-atribut yang ditanyakan dalam daftar kuesioner adalah:
1.	Keiritan Bahan Bakar Sepeda Motor (Irit)
2.	Ketersediaan suku cadang, termasuk kualitasnya (Onderdil)
3.	Harga sepeda motor (Harga)
4.	Model dan Desain Sepeda Motor (Model)
5.	Kombinasi Warna Sepeda Motor (Warna)
6.	Keawetan sepeda motor, khususnya mesin (Awet)
7.	Promosi yang dilakukan (Promosi)
8.	Sistem pembayaran sepeda motor secara kredit (Kredit)
Setiap atribut diberi nilai 1 (Sangat tidak setuju) sampai nilai 5 (Sangat Setuju). Gunakan informasi data tersebut untuk mengetahui faktor-faktor apa saja yang mempengaruhi seseorang untuk membeli sepeda motor di toko X. 

# Input Data

> setwd("E:/KMMI")
> data1 <- read.csv("Tugas.csv")
> data1

![image](https://user-images.githubusercontent.com/116244436/197452682-42d9e78b-9bee-4fa5-b8ed-dc771171e37f.png)

![image](https://user-images.githubusercontent.com/116244436/197452733-9c317cb7-395b-40c2-94ac-c4a140f941a9.png)

# Menentukan Matriks Korelasi

![image](https://user-images.githubusercontent.com/116244436/197451924-db84c0a9-d8dc-46f5-a0ae-b0a5d532655b.png)

Untuk memudahkan dalam melihat nilai-nilai korelasi tersebut dapat juga ditampilkan melalui grafik.

corrplot(kor, order="hclust")

![image](https://user-images.githubusercontent.com/116244436/197451999-2bab6a79-59a3-41d8-932b-89d79d257959.png)

Warna biru pada Gambar berarti dua variabel tersebut berkorelasi positif, sedangkan warna coklat menunjukkan nilai korelasi negatif. Semakin terang warna-warna tersebut, semakin tinggi pula nilai korelasi dari variabel-variabel tersebut. Hal ini berarti bahwa semakin erat hubungan antar variabel tersebut. Misalkan antara Onderdil dan Promosi, serta antara Ondernil dan Model.

# Menilai Kelayakan/Kecukupan Data

![image](https://user-images.githubusercontent.com/116244436/197452967-2067cadc-6eea-4896-9f45-1cd3608d8bf5.png)

Berdasarkan dari output yang diperoleh nilai indeks KMO-MSA = 0.56 dan nilai MSA (Anti image correlation) setiap variabel lebih dari 0.5, kecuali variabel promosi. Karena itu variabel promosi dikeluarkan dari analisis. Selanjutnya dihitung kembali nilai KMO dan MSA masing-masing variabel tersisa.

Untuk menghitung kembali nilai KMO dan MSA yang tersisa maka kita menggunakan syntax dibawah ini:

![image](https://user-images.githubusercontent.com/116244436/197453043-3ff6bdb9-2e1b-4463-84e8-87add82bba19.png)
	
 # Menggunakan Uji Bartlett
 
![image](https://user-images.githubusercontent.com/116244436/197453109-f02b86eb-4b46-4fc0-b600-325da59408a9.png)

Berdasarkan nilai KMO-MSA dan MSA setiap variabel, diperoleh bahwa semua bernilai lebih dari 0.5, sementara hasil dari uji Bartlett diperoleh nilai Chi-kuadrat = 46.98471, df = 21, p-value = 0.0009435827, dimana untuk α = 0.05, p-value < α sehingga dapat dikatakan bahwa ketujuh variabel tersebut dapat digunakan untuk melakukan analisis faktor.

# Menentukan banyaknya faktor yang diekstrak

Untuk menentukan banyak faktor yang digunakan dalam analisis adalah melalui visualisasi Scree plot. Syntax yang digunakan yaitu:

plot(nScree(x=kor2,model="factors"))

Output dari syntax diatas yaitu:

![image](https://user-images.githubusercontent.com/116244436/197452249-a42fe677-81d4-45b0-8264-c1b67750097b.png)

Berdasarkan diatas banyaknya faktor dengan nilai eigen > 1 adalah 3 faktor, sehingga dalam analisis selanjutnya digunakan 3 faktor.

# Menentukan hasil analisis faktor 

![image](https://user-images.githubusercontent.com/116244436/197453268-0356ac38-ead7-4b1c-b5d4-a0e67502e534.png)

![image](https://user-images.githubusercontent.com/116244436/197453346-ff696289-afd2-4419-8b4f-dea8dc3bd74d.png)

Langkah selanjutnya yaitu kita menampilkan pengelompokan variabel. Syntax yang digunakan yaitu:

![image](https://user-images.githubusercontent.com/116244436/197453496-f96ebc30-0dce-49cb-b2a7-749d597ce611.png)

![image](https://user-images.githubusercontent.com/116244436/197452464-18e96880-58a4-4df2-9c6e-bd0445cb754a.png)

Berdasarkan hasil analisis faktor dengan menggunakan 2 faktor dan rotasi varimax, serta tampilan gambar diatas diperoleh bahwa: Faktor 1 terdiri atas variabel Irit, Harga, Model, Warna dan Awet Faktor 2 terdiri atas variabel Onderdil dan Kredit.

# Menentukan Nama Faktor

Dari hasil analisis faktor ini telah mereduksi 7 variabel asal menjadi 2 variabel baru (Faktor)
Faktor 1 : Irit, Harga, Model, Warna dan Awet 
Faktor 2 : Onderdil dan Kredit

# Kesimpulan:
Faktor-faktor yang mempengaruhi konsumen untuk membeli motor di toko santoso tersebut adalah Faktor Fasilitas dan SDM. Kedua faktor ini mestinya menjadi perhatian dari pihak pengelola toko santoso untuk meningkatkan omset penjualannya.
