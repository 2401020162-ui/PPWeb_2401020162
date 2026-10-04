USE praktikum_web_2401020162;

-- 1. Isi minimal 2 program studi
INSERT INTO program_studi (nama_prodi) VALUES
('Teknik Komputer'),
('Teknologi Informasi');

-- 2. Isi 4 mahasiswa (termasuk 1 data sementara)
INSERT INTO mahasiswa (nim, nama, email, usia, program_studi_id) VALUES
('2401020001', 'Citra Dewi', 'citra@example.com', 19, 1),
('2401020002', 'Dian Pratama', 'dian@example.com', 20, 1),
('2401020003', 'Eko Santoso', 'eko@example.com', 21, 2),
('2401020099', 'Uji Sementara', 'sementara_test@example.com', 18, 2);

-- 3. Satu UPDATE
UPDATE mahasiswa 
SET email = 'citra.dewi@example.com' 
WHERE nim = '2401020001';

-- 4. Satu DELETE pada data sementara
DELETE FROM mahasiswa 
WHERE nim = '2401020099';

-- 5. SELECT JOIN (menghasilkan 3 mahasiswa)
SELECT 
    m.nim, 
    m.nama, 
    m.email, 
    m.usia, 
    p.nama_prodi
FROM mahasiswa AS m
JOIN program_studi AS p ON p.id = m.program_studi_id
ORDER BY m.nim;