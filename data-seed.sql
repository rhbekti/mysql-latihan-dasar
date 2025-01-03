INSERT INTO tb_agama(nama_agama) VALUES ('Islam'),('Kristen'),('Katolik'),('Hindu'),('Budha');
SELECT * FROM tb_agama;

INSERT INTO tb_mapel(nama_mapel) VALUES ('Matematika'),('Bahasa Indonesia'),('Bahasa Inggris');
SELECT * FROM tb_mapel;

INSERT INTO tb_kelas(nama_kelas) VALUES ('1 SMP'),('2 SMP'),('3 SMP');
SELECT * FROM tb_kelas;

INSERT INTO tb_tahun_ajaran VALUES ('2324','2023 / 2024'),('2425','2024 / 2025'), ('2526','2025 / 2026'),('2627','2026 / 2027'),('2728','2027 / 2028');
SELECT * FROM tb_tahun_ajaran;

INSERT INTO tb_siswa (nama_siswa,tgl_lahir , id_agama , tabungan) VALUES ('Ani', '2000-06-08', 1, 45000), ('Budi', '2000-07-02', 1, 50000), ('Bambang', '2001-07-03', 1, 45000), ('Deni', '2001-07-30', 4, 50000), ('Rendi', '2002-12-03', 1, 15000), ('Audi', '2002-08-17', 3, 0), ('Santi', '2003-07-04', 1, 15000), ('Dila', '2003-07-20', 1, 10000), ('Agnes', '2004-07-10', 2, 15000), ('Doni', '2004-12-31', 5, 25000);
SELECT * FROM tb_siswa;


INSERT INTO tb_tabungan (id_siswa, tgl_transaksi , nominal) VALUES (1, '2024-11-02', 10000), (2, '2024-11-02', 10000), (5, '2024-11-02', 15000), (8, '2024-11-02', 10000), (1, '2024-11-03', 20000), (9, '2024-11-03', 15000), (7, '2024-11-03', 15000), (4, '2024-11-03', 20000), (3, '2024-11-03', 20000), (3, '2024-11-04', 10000), (2, '2024-11-04', 20000), (1, '2024-11-05', 15000), (2, '2024-11-05', 20000), (3, '2024-11-05', 15000), (4, '2024-11-05', 30000), (10, '2024-11-05', 25000);
SELECT * FROM tb_tabungan;

INSERT INTO tb_nilai (id_siswa, id_mapel, nilai, id_tahun_ajaran) VALUES (1, 1, 80, 2324), (1, 2, 70, 2324), (1, 3, 85, 2324), (2, 1, 95, 2324), (2, 2, 60, 2324), (2, 3, 85, 2324), (3, 1, 70, 2425), (3, 2, 90, 2425), (3, 3, 80, 2425), (4, 1, 80, 2425), (4, 2, 85, 2425), (4, 3, 70, 2425), (1, 1, 90, 2425), (1, 2, 80, 2425), (1, 3, 75, 2425), (2, 1, 80, 2425), (2, 2, 85, 2425), (2, 3, 70, 2425), (5, 1, 85, 2526), (5, 2, 95, 2526), (5, 3, 100, 2526), (6, 1, 80, 2526), (6, 2, 90, 2526), (6, 3, 95, 2526), (3, 1, 90, 2526), (3, 2, 90, 2526), (3, 3, 80, 2526), (4, 1, 75, 2526), (4, 2, 80, 2526), (4, 3, 70, 2526), (1, 1, 85, 2526), (1, 2, 90, 2526), (1, 3, 90, 2526), (2, 1, 80, 2526), (2, 2, 95, 2526), (2, 3, 75, 2526), (7, 1, 60, 2627), (7, 2, 70, 2627), (7, 3, 80, 2627), (8, 1, 85, 2627), (8, 2, 90, 2627), (8, 3, 95, 2627), (5, 1, 80, 2627), (5, 2, 70, 2627), (5, 3, 85, 2627), (6, 1, 90, 2627), (6, 2, 70, 2627), (6, 3, 60, 2627), (3, 1, 100, 2627), (3, 2, 70, 2627), (3, 3, 95, 2627), (4, 1, 95, 2627), (4, 2, 90, 2627), (4, 3, 80, 2627), (9, 1, 85, 2728), (9, 2, 90, 2728), (9, 3, 75, 2728), (10, 1, 90, 2728), (10, 2, 65, 2728), (10, 3, 80, 2728), (7, 1, 80, 2728), (7, 2, 95, 2728), (7, 3, 90, 2728), (8, 1, 75, 2728), (8, 2, 60, 2728), (8, 3, 65, 2728), (5, 1, 80, 2728), (5, 2, 85, 2728), (5, 3, 90, 2728), (6, 1, 95, 2728), (6, 2, 100, 2728), (6, 3, 90, 2728);
SELECT * FROM tb_nilai;

INSERT INTO tb_siswa_perkelas (id_siswa, id_kelas, id_tahun_ajaran) VALUES (1, 1, 2324), (2, 1, 2324), (3, 1, 2425), (4, 1, 2425), (1, 2, 2425), (2, 2, 2425), (5, 1, 2526), (6, 1, 2526), (3, 2, 2526), (4, 2, 2526), (1, 3, 2526), (2, 3, 2526), (7, 1, 2627), (8, 1, 2627), (5, 2, 2627), (6, 2, 2627), (3, 3, 2627), (4, 3, 2627), (9, 1, 2728), (10, 1, 2728), (8, 2, 2728), (7, 2, 2728), (5, 3, 2728), (6, 3, 2728);
SELECT * FROM tb_siswa_perkelas;

SELECT s.*,(SELECT nama_agama FROM tb_agama ta WHERE ta.id_agama = s.id_agama) as agama FROM tb_siswa s;

SELECT s.* FROM tb_siswa s WHERE id_agama = (SELECT id_agama FROM tb_agama WHERE nama_agama = 'Islam');

SELECT s.*, TIMESTAMPDIFF(YEAR, tgl_lahir, CURDATE()) AS umur FROM tb_siswa s;

SELECT s.* FROM tb_siswa s WHERE MONTH(tgl_lahir) = 12;

SELECT s.* FROM tb_siswa s WHERE MONTH(tgl_lahir) = MONTH(CURRENT_DATE());

SELECT s.* FROM tb_siswa s WHERE WEEK(tgl_lahir,1) = WEEK(CURDATE() ,1);

SELECT s.* FROM tb_siswa s WHERE tgl_lahir = CURDATE();

SELECT * FROM tb_siswa WHERE nama_siswa LIKE 'D%';

SELECT (SELECT nama_siswa FROM tb_siswa ts WHERE ts.id_siswa = tsp.id_siswa) as nama,(SELECT nama_kelas FROM tb_kelas tk WHERE tk.id_kelas = tsp.id_kelas)as kelas,(SELECT nama_tahun_ajaran FROM tb_tahun_ajaran tta WHERE tta.id_tahun_ajaran = tsp.id_tahun_ajaran) as tahun_ajaran FROM tb_siswa_perkelas tsp;

SELECT nama_siswa as nama,nama_kelas as kelas,nama_tahun_ajaran as tahun_ajaran FROM tb_siswa_perkelas tsp INNER JOIN tb_siswa ts ON tsp.id_siswa = ts.id_siswa INNER JOIN tb_kelas tk ON tk.id_kelas = tsp.id_kelas INNER JOIN tb_tahun_ajaran tta ON tta.id_tahun_ajaran = tsp.id_tahun_ajaran;  

SELECT 
	(SELECT nama_siswa FROM tb_siswa ts WHERE ts.id_siswa = tsp.id_siswa) as nama,
	(SELECT nama_kelas FROM tb_kelas tk WHERE tk.id_kelas = tsp.id_kelas) as kelas,
	(SELECT nama_tahun_ajaran FROM tb_tahun_ajaran tta WHERE tta.id_tahun_ajaran = tsp.id_tahun_ajaran) as tahun_ajaran 
FROM 
	tb_siswa_perkelas tsp 
WHERE 
	id_tahun_ajaran = (SELECT id_tahun_ajaran FROM tb_tahun_ajaran WHERE nama_tahun_ajaran = '2023 / 2024');



SELECT 
    ts.nama_siswa AS nama,
    tk.nama_kelas AS kelas,
    tta.nama_tahun_ajaran AS tahun_ajaran
FROM 
    tb_siswa_perkelas tsp
JOIN 
    tb_siswa ts ON ts.id_siswa = tsp.id_siswa
JOIN 
    tb_kelas tk ON tk.id_kelas = tsp.id_kelas
JOIN 
    tb_tahun_ajaran tta ON tta.id_tahun_ajaran = tsp.id_tahun_ajaran
WHERE 
    tta.nama_tahun_ajaran = '2023 / 2024';

SELECT 
	(SELECT nama_siswa FROM tb_siswa ts WHERE ts.id_siswa = tsp.id_siswa) as nama,
	(SELECT nama_kelas FROM tb_kelas tk WHERE tk.id_kelas = tsp.id_kelas) as kelas,
	(SELECT nama_tahun_ajaran FROM tb_tahun_ajaran tta WHERE tta.id_tahun_ajaran = tsp.id_tahun_ajaran) as tahun_ajaran 
FROM 
	tb_siswa_perkelas tsp 
WHERE 
	id_tahun_ajaran = (SELECT id_tahun_ajaran FROM tb_tahun_ajaran WHERE nama_tahun_ajaran = '2025 / 2026')
AND 
	id_kelas = (SELECT id_kelas FROM tb_kelas WHERE nama_kelas = '2 SMP');

SELECT 
    ts.nama_siswa AS nama,
    tk.nama_kelas AS kelas,
    tta.nama_tahun_ajaran AS tahun_ajaran
FROM 
    tb_siswa_perkelas tsp
JOIN 
    tb_siswa ts ON ts.id_siswa = tsp.id_siswa
JOIN 
    tb_kelas tk ON tk.id_kelas = tsp.id_kelas
JOIN 
    tb_tahun_ajaran tta ON tta.id_tahun_ajaran = tsp.id_tahun_ajaran
WHERE 
    tta.nama_tahun_ajaran = '2025 / 2026'
AND 
	tk.nama_kelas = '2 SMP';

SELECT 
	(SELECT nama_siswa FROM tb_siswa ts WHERE ts.id_siswa = tn.id_siswa) as nama,
	(SELECT nama_mapel FROM tb_mapel tm WHERE tm.id_mapel = tn.id_mapel) as mapel,
	(SELECT nama_tahun_ajaran FROM tb_tahun_ajaran tta WHERE tta.id_tahun_ajaran = tn.id_tahun_ajaran) as tahun_ajaran,
	tn.nilai
FROM 
	tb_nilai tn;

SELECT 
    ts.nama_siswa AS nama,
    tm.nama_mapel AS mapel,
    tta.nama_tahun_ajaran AS tahun_ajaran,
    tn.nilai
FROM 
    tb_nilai tn
INNER JOIN 
    tb_siswa ts ON ts.id_siswa = tn.id_siswa
INNER JOIN 
    tb_mapel tm ON tm.id_mapel = tn.id_mapel
INNER JOIN 
    tb_tahun_ajaran tta ON tta.id_tahun_ajaran = tn.id_tahun_ajaran;


SELECT 
	(SELECT nama_siswa FROM tb_siswa ts WHERE ts.id_siswa = tn.id_siswa) as nama,
	(SELECT nama_mapel FROM tb_mapel tm WHERE tm.id_mapel = tn.id_mapel) as mapel,
	(SELECT nama_tahun_ajaran FROM tb_tahun_ajaran tta WHERE tta.id_tahun_ajaran = tn.id_tahun_ajaran) as tahun_ajaran,
	tn.nilai,
	(CASE 
		WHEN tn.nilai >= 70 THEN 'Lulus'
		ELSE 'Tidak Lulus'
	END) as status
FROM 
	tb_nilai tn;

SELECT 
    ts.nama_siswa AS nama,
    tm.nama_mapel AS mapel,
    tta.nama_tahun_ajaran AS tahun_ajaran,
    tn.nilai,
    (CASE 
		WHEN tn.nilai >= 70 THEN 'Lulus'
		ELSE 'Tidak Lulus'
	END) as status
FROM 
    tb_nilai tn
INNER JOIN 
    tb_siswa ts ON ts.id_siswa = tn.id_siswa
INNER JOIN 
    tb_mapel tm ON tm.id_mapel = tn.id_mapel
INNER JOIN 
    tb_tahun_ajaran tta ON tta.id_tahun_ajaran = tn.id_tahun_ajaran;

SELECT 
	(SELECT nama_siswa FROM tb_siswa ts WHERE ts.id_siswa = tn.id_siswa) as nama,
	(SELECT nama_mapel FROM tb_mapel tm WHERE tm.id_mapel = tn.id_mapel) as mapel,
	(SELECT nama_tahun_ajaran FROM tb_tahun_ajaran tta WHERE tta.id_tahun_ajaran = tn.id_tahun_ajaran) as tahun_ajaran,
	tn.nilai,
	(CASE 
		WHEN tn.nilai >= 70 THEN 'Lulus'
		ELSE 'Tidak Lulus'
	END) as status
FROM 
	tb_nilai tn
WHERE 
	tn.nilai < 70;

SELECT 
	(SELECT nama_siswa FROM tb_siswa ts WHERE ts.id_siswa = tsp.id_siswa) as nama,
	(SELECT nama_tahun_ajaran FROM tb_tahun_ajaran tta WHERE tta.id_tahun_ajaran = tsp.id_tahun_ajaran) as tahun_ajaran,
	(SELECT nama_kelas FROM tb_kelas tk WHERE tk.id_kelas = tsp.id_kelas) as kelas,
	(SELECT SUM(nilai) FROM tb_nilai tn WHERE tn.id_siswa = tsp.id_siswa) as total_nilai,
	(SELECT AVG(nilai) FROM tb_nilai tn WHERE tn.id_siswa = tsp.id_siswa) as rata_rata
FROM 
	tb_siswa_perkelas tsp;


CREATE VIEW 
	Siswa 
AS 
	SELECT 
		nama_siswa,tgl_lahir,(SELECT nama_agama FROM tb_agama ta 
	WHERE 
		ta.id_agama = ts.id_agama) AS nama_agama,tabungan 
	FROM 
		tb_siswa ts;

SELECT * FROM Siswa;
DROP VIEW Siswa;

CREATE VIEW Kelas
AS
	SELECT 
		(SELECT nama_siswa FROM tb_siswa ts WHERE ts.id_siswa = tsp.id_siswa) as nama,
		(SELECT nama_kelas FROM tb_kelas tk WHERE tk.id_kelas = tsp.id_kelas) as kelas,
		(SELECT nama_tahun_ajaran FROM tb_tahun_ajaran tta WHERE tta.id_tahun_ajaran = tsp.id_tahun_ajaran) as tahun_ajaran
	FROM 
		tb_siswa_perkelas tsp;
SELECT * FROM Kelas;

CREATE VIEW Nilai
AS
	SELECT 
		(SELECT nama_siswa FROM tb_siswa ts WHERE ts.id_siswa = tn.id_siswa) as nama,
		(SELECT nama_mapel FROM tb_mapel tm WHERE tm.id_mapel = tn.id_mapel) as mapel,
		(SELECT nama_tahun_ajaran FROM tb_tahun_ajaran tta WHERE tta.id_tahun_ajaran = tn.id_tahun_ajaran) as tahun_ajaran,
		tn.nilai
	FROM 
		tb_nilai tn;
SELECT * FROM Nilai;
DROP VIEW Nilai;

CALL agama_siswa("1");

SELECT 
	(SELECT nama_tahun_ajaran FROM tb_tahun_ajaran tta WHERE tta.id_tahun_ajaran = tsp.id_tahun_ajaran) as tahun_ajaran,
	(SELECT nama_kelas FROM tb_kelas tk WHERE tk.id_kelas = tsp.id_kelas) as kelas,
	COUNT(*) as jumlah_siswa 
FROM tb_siswa_perkelas tsp WHERE id_tahun_ajaran = 2627
GROUP BY id_kelas,id_tahun_ajaran;



