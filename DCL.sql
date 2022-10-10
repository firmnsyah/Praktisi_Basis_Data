-- Memberikan semua hak akses ke user
GRANT ALL PRIVILEGES ON Kelompok_VB.* TO 'Kel_Vb'@'localhost';

-- Memberikan hak akses tertentu (INSERT) ke user
GRANT INSERT ON Kelompok_VB.* TO 'Kel_Vb'@'localhost';

-- Mencabut semua hak akses dari user
REVOKE ALL ON Kelompok_VB.* FROM 'Kel_Vb'@'localhost';