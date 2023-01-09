CREATE DATABASE cvOcg;

-- Bai 1 --

USE cvOcg;

CREATE TABLE Canhan (
	id				int				PRIMARY KEY		AUTO_INCREMENT,
    email			VARCHAR(30)		NOT NULL
);

INSERT INTO Canhan(email) VALUES ("a@b.com"),
								 ("c@d.com"),
                                 ("a@b.com");
                                 
-- Hiển thị tất cả các email bị trùng trong bảng “Canhan”.
SELECT email, COUNT(email) AS duplicates FROM Canhan WHERE email IN (
SELECT email FROM Canhan GROUP BY email HAVING COUNT(email) > 1
) GROUP BY email;


-- Hiển thị tất cả các email không bị trùng trong bảng “Canhan”.
SELECT email FROM Canhan WHERE email IN (
SELECT email FROM Canhan GROUP BY email HAVING COUNT(email) <= 1
);

-- Bai 2 --

USE cvOcg;

CREATE TABLE Luong (
	id				int				PRIMARY KEY		AUTO_INCREMENT,
    salary			int				NOT NULL
);

INSERT INTO Luong(salary) VALUES (100),
								 (200),
                                 (300);
                                 
-- Viết câu lệnh SQL để hiển thị giá trị lương của nhân viên có mức lượng cao thứ nhì trong bảng “luong”.
SELECT * FROM Luong ORDER BY salary DESC LIMIT 1,1;

-- Bai 3 --

USE cvOcg;

CREATE TABLE ketqua (
	id				int				PRIMARY KEY		AUTO_INCREMENT,
    score			decimal(10, 2)	NOT NULL
);

INSERT INTO ketqua(score) VALUES (3.5),
								 (3.65),
                                 (4),
                                 (3.85),
                                 (4),
                                 (3.65);
                                 
-- Lượt chơi có số điểm cao nhất sẽ có xếp hạng bé nhất là 1.
-- Các lượt chơi có số điểm bằng nhau có số xếp hạng (rank) bằng nhau.
-- Sắp xếp theo thứ tự giảm dần theo rank.
SELECT *, DENSE_RANK() OVER (ORDER BY score DESC) AS ranks FROM ketqua;