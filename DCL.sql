-- Memberikan semua hak akses ke user 
GRANT CREATE, DROP, SELECT, INSERT, DELETE, UPDATE, ALTER  
ON Kelompok_VB.*
TO 'Kel_Vb'@'localhost';

-- Status hak akses user
SHOW GRANTS FOR 'Kel_Vb'@'localhost';

-- Menarik hak akses CREATE & DROP dari user
REVOKE CREATE, DROP
ON Kelompok_VB.*
FROM 'Kel_Vb'@'localhost';