
CREATE DATABASE QuanLyNhanSu;
USE QuanLyNhanSu;
CREATE TABLE PhongBan(
id INT AUTO_INCREMENT PRIMARY KEY,
Ten_phong_ban VARCHAR(200) NOT NULL UNIQUE
);
CREATE TABLE NhanVien(
id INT AUTO_INCREMENT PRIMARY KEY,
ho_ten VARCHAR(100) NOT NULL UNIQUE,
email VARCHAR(150) NOT NULL ,
ngay_vao_lam DATE,
phong_ban_id INT 
);
ALTER TABLE NhanVien
ADD CONSTRAINT fk_nhanvien_phongban
FOREIGN KEY (phong_ban_id) REFERENCES PhongBan(id)
ON DELETE RESTRICT 
ON UPDATE CASCADE;
INSERT INTO PhongBan (ten_phong_ban) VALUES
('Nhân sự'),
('Kế toán'),
('IT');
INSERT INTO NhanVien (ho_ten, email, ngay_vao_lam, phong_ban_id) VALUES
('Nguyễn Văn A', 'a.nv@email.com', '2022-01-15', 1), 
('Phạm Thị C', 'c.pt@email.com', '2023-05-20', 3);
SELECT
    NV.ho_ten,
    NV.email,
    PB.ten_phong_ban
FROM
    NhanVien NV
INNER JOIN
    PhongBan PB ON NV.phong_ban_id = PB.id
WHERE
    PB.ten_phong_ban = 'IT';
    UPDATE NhanVien
SET phong_ban_id = (SELECT id FROM PhongBan WHERE ten_phong_ban = 'Nhân sự') -- Lấy id của phòng 'Nhân sự'
WHERE ho_ten = 'Trần Văn An';
DELETE FROM NhanVien
WHERE ho_ten = 'Lê Thị Bích';
