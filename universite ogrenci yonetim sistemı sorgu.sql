--tablolar---
CREATE TABLE bolumler (
    bolum_id SERIAL PRIMARY KEY,
    bolum_adi VARCHAR(100),
    fakulte VARCHAR(100)
);

CREATE TABLE ogrenciler (
    ogrenci_id SERIAL PRIMARY KEY,
    ad VARCHAR(100),
    soyad VARCHAR(100),
    bolum_id INT,
    cinsiyet CHAR(1),
    gno DECIMAL(3,2),
    FOREIGN KEY (bolum_id) REFERENCES bolumler(bolum_id)
);

CREATE TABLE akademisyenler (
    ogretmen_id SERIAL PRIMARY KEY,
    ad VARCHAR(100),
    soyad VARCHAR(100),
    unvan VARCHAR(50),
    bolum_id INT,
    FOREIGN KEY (bolum_id) REFERENCES bolumler(bolum_id)
);

CREATE TABLE dersler (
    ders_id SERIAL PRIMARY KEY,
    ders_adi VARCHAR(100),
    kredi INT,
    bolum_id INT,
    donem VARCHAR(20),
    FOREIGN KEY (bolum_id) REFERENCES bolumler(bolum_id)
);

CREATE TABLE notlar (
    kayit_id SERIAL PRIMARY KEY,
    ogrenci_id INT,
    ders_id INT,
    vize INT,
    final INT,
    harf_notu CHAR(2),
    FOREIGN KEY (ogrenci_id) REFERENCES ogrenciler(ogrenci_id),
    FOREIGN KEY (ders_id) REFERENCES dersler(ders_id)
);


-- veri ekleme kısmı--

INSERT INTO bolumler (bolum_adi, fakulte) VALUES
('Endüstri Mühendisliği','Mühendislik Fakültesi'),
('Bilgisayar Mühendisliği','Mühendislik Fakültesi'),
('Makine Mühendisliği','Mühendislik Fakültesi'),
('Elektrik-Elektronik Mühendisliği','Mühendislik Fakültesi'),
('İktisat','İİBF'),
('İşletme','İİBF');


INSERT INTO ogrenciler (ad, soyad, bolum_id, cinsiyet, gno) VALUES
('Burcu','Uzun',1,'K',3.20),
('Ahmet','Yılmaz',2,'E',2.80),
('Zeynep','Kara',3,'K',3.60),
('Mehmet','Demir',4,'E',2.40),
('Elif','Aydın',5,'K',3.10),
('Can','Kaya',6,'E',2.90),
('Selin','Yıldız',1,'K',3.45),
('Mert','Aslan',2,'E',2.75),
('Ayşe','Çelik',3,'K',3.30),
('Emre','Koç',4,'E',2.60),
('Derya','Şahin',5,'K',3.50),
('Onur','Polat',6,'E',2.95),
('Ece','Güneş',1,'K',3.70),
('Ali','Öztürk',2,'E',2.85),
('Büşra','Arslan',3,'K',3.15),
('Kerem','Yalçın',4,'E',2.55),
('Sena','Aksoy',5,'K',3.40),
('Hakan','Doğan',6,'E',2.65),
('Melis','Erdoğan',1,'K',3.00),
('Furkan','Kaplan',2,'E',2.90),
('Naz','Kurt',3,'K',3.80),
('Umut','Sezer',4,'E',2.45),
('İrem','Bozkurt',5,'K',3.25),
('Tolga','Acar',6,'E',2.70),
('Aslı','Keskin',1,'K',3.55),
('Yusuf','Şimşek',2,'E',2.60),
('Cansu','Taş',3,'K',3.35),
('Batuhan','Çınar',4,'E',2.50),
('Pelin','Ekinci',5,'K',3.65),
('Serkan','Albayrak',6,'E',2.80);


INSERT INTO akademisyenler (ad, soyad, unvan, bolum_id) VALUES
('Ayşe','Koç','Prof. Dr.',1),
('Ali','Çetin','Doç. Dr.',2),
('Fatma','Şahin','Dr. Öğr. Üyesi',3),
('Mehmet','Aydın','Prof. Dr.',4),
('Zehra','Korkmaz','Doç. Dr.',5),
('Murat','Eren','Dr. Öğr. Üyesi',6),
('Selma','Uslu','Prof. Dr.',1),
('Kemal','Arı','Doç. Dr.',2),
('Neslihan','Bulut','Dr. Öğr. Üyesi',3),
('Burak','Yıldırım','Prof. Dr.',4),
('Hande','Yavuz','Doç. Dr.',5),
('Serhat','Özcan','Dr. Öğr. Üyesi',6),
('Pınar','Gül','Prof. Dr.',1),
('Cem','Tuna','Doç. Dr.',2),
('Ebru','Deniz','Dr. Öğr. Üyesi',3),
('Okan','Sarı','Prof. Dr.',4),
('Banu','Kılıç','Doç. Dr.',5),
('Volkan','Tekin','Dr. Öğr. Üyesi',6),
('Gizem','Ateş','Prof. Dr.',1),
('Levent','Baş','Doç. Dr.',2),
('Aylin','Er','Dr. Öğr. Üyesi',3),
('Hüseyin','Köse','Prof. Dr.',4),
('Sevgi','Çakır','Doç. Dr.',5),
('Emrah','Topal','Dr. Öğr. Üyesi',6),
('Dilan','Yüksel','Prof. Dr.',1),
('İsmail','Yurt','Doç. Dr.',2),
('Tuğba','Bayram','Dr. Öğr. Üyesi',3),
('Serdar','Akın','Prof. Dr.',4),
('Elvan','Karaca','Doç. Dr.',5),
('Sinan','Işık','Dr. Öğr. Üyesi',6);


INSERT INTO dersler (ders_adi, kredi, bolum_id, donem) VALUES
('Yöneylem Araştırması',4,1,'Güz'),
('İstatistik',4,1,'Bahar'),
('Üretim Planlama',3,1,'Güz'),
('Veritabanı Sistemleri',3,2,'Bahar'),
('Algoritmalar',4,2,'Güz'),
('Yapay Zeka',3,2,'Bahar'),
('Makine Elemanları',4,3,'Güz'),
('Termodinamik',4,3,'Bahar'),
('Akışkanlar Mekaniği',3,3,'Güz'),
('Devre Analizi',4,4,'Güz'),
('Elektronik',4,4,'Bahar'),
('Sinyaller ve Sistemler',3,4,'Güz'),
('Mikroiktisat',3,5,'Güz'),
('Makroiktisat',3,5,'Bahar'),
('Ekonometri',4,5,'Güz'),
('Genel İşletme',3,6,'Güz'),
('Pazarlama',3,6,'Bahar'),
('Finans',4,6,'Güz'),
('Optimizasyon',4,1,'Bahar'),
('Veri Madenciliği',3,2,'Güz'),
('Isı Transferi',4,3,'Bahar'),
('Güç Elektroniği',3,4,'Bahar'),
('Uluslararası İktisat',3,5,'Güz'),
('Muhasebe',4,6,'Bahar'),
('Kalite Yönetimi',3,1,'Güz'),
('Bilgisayar Ağları',3,2,'Bahar'),
('Malzeme Bilimi',4,3,'Güz'),
('Kontrol Sistemleri',4,4,'Bahar'),
('Para Teorisi',3,5,'Bahar'),
('Stratejik Yönetim',3,6,'Güz');

INSERT INTO notlar (ogrenci_id, ders_id, vize, final, harf_notu) VALUES
(1,1,75,85,'BA'),
(2,4,65,70,'CB'),
(3,7,90,95,'AA'),
(4,10,50,60,'CC'),
(5,13,80,85,'BA'),
(6,16,70,75,'CB'),
(7,2,88,92,'AA'),
(8,5,60,65,'CC'),
(9,8,85,90,'AA'),
(10,11,55,60,'DC'),
(11,14,78,82,'BB'),
(12,17,72,76,'CB'),
(13,3,95,98,'AA'),
(14,6,68,72,'CB'),
(15,9,80,85,'BA'),
(16,12,50,55,'DD'),
(17,15,88,90,'AA'),
(18,18,65,70,'CC'),
(19,19,75,80,'BB'),
(20,20,70,75,'CB'),
(21,21,90,95,'AA'),
(22,22,55,60,'DC'),
(23,23,85,88,'BA'),
(24,24,60,65,'CC'),
(25,25,92,96,'AA'),
(26,26,70,75,'CB'),
(27,27,80,85,'BA'),
(28,28,50,55,'DD'),
(29,29,88,90,'AA'),
(30,30,65,70,'CC');

--view oluşturma --
CREATE VIEW vw_ogrenci_notlari AS
SELECT
    o.ogrenci_id,
    o.ad,
    o.soyad,
    b.bolum_adi,
    d.ders_adi,
    n.vize,
    n.final,
    n.harf_notu
FROM notlar n
JOIN ogrenciler o ON n.ogrenci_id = o.ogrenci_id
JOIN dersler d ON n.ders_id = d.ders_id
JOIN bolumler b ON o.bolum_id = b.bolum_id;

 select * from vw_ogrenci_notlari;

 SELECT datname FROM pg_database;

 SELECT current_user;


CREATE OR REPLACE VIEW vw_akademisyen_yuku AS
SELECT
    CONCAT(a.ad, ' ', a.soyad) AS akademisyen_adi,
    COUNT(DISTINCT d.ders_id) AS ders_sayisi,
    COUNT(DISTINCT o.ogrenci_id) AS ogrenci_sayisi
FROM akademisyenler a
LEFT JOIN dersler d
    ON a.bolum_id = d.bolum_id
LEFT JOIN ogrenciler o
    ON a.bolum_id = o.bolum_id
GROUP BY
    akademisyen_adi;


CREATE OR REPLACE VIEW vw_ogrenci_karnesi AS
SELECT
    o.ogrenci_id,
    CONCAT(o.ad, ' ', o.soyad) AS ogrenci_adi,
    b.bolum_adi,
    d.ders_adi,
    d.kredi,
    n.vize,
    n.final,
    n.harf_notu
FROM notlar n
JOIN ogrenciler o ON n.ogrenci_id = o.ogrenci_id
JOIN dersler d ON n.ders_id = d.ders_id
JOIN bolumler b ON o.bolum_id = b.bolum_id;

