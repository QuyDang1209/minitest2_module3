CREATE SCHEMA `quanlyhocvien` ;
use `quanlyhocvien`;
CREATE TABLE `quanlyhocvien`.`address` (
  `id` INT NOT NULL,
  `Addres` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
  CREATE TABLE `quanlyhocvien`.`classes` (
  `id` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  `Language` VARCHAR(45) NULL,
  `Decription` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
  CREATE TABLE `quanlyhocvien`.`students` (
  `id` INT NOT NULL,
  `FullName` VARCHAR(45) NULL,
  `addres_id` INT NULL,
  `Age` INT NULL,
  `Phone` VARCHAR(45) NULL,
  `Classes_id` INT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `Phone_UNIQUE` (`Phone` ASC) VISIBLE,
   CONSTRAINT `fk_address_idStudent_idAddress`
    FOREIGN KEY (`addres_id`)
    REFERENCES `quanlyhocvien`.`address` (`id`),
      CONSTRAINT `fk_classes_idStudent_Classesid`
    FOREIGN KEY (`Classes_id`)
    REFERENCES `quanlyhocvien`.`classes` (`id`));
    CREATE TABLE `quanlyhocvien`.`course` (
  `id` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  `Decription` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
  CREATE TABLE `quanlyhocvien`.`point` (
  `id` INT NOT NULL,
  `course_id` INT NULL,
  `student_id` INT NULL,
  `point` DOUBLE NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_course_idPoint_idCourse`
    FOREIGN KEY (`course_id`)
    REFERENCES `quanlyhocvien`.`course` (`id`),
  CONSTRAINT `fk_student_idPoint_idStudent`
    FOREIGN KEY (`student_id`)
    REFERENCES `quanlyhocvien`.`students` (`id`));
    INSERT INTO `quanlyhocvien`.`address` (`id`, `Addres`) VALUES ('1', 'TP Hue');
INSERT INTO `address` (`id`, `Addres`) VALUES ('2', 'TP Da Nang');
INSERT INTO `address` (`id`, `Addres`) VALUES ('3', 'TP Ho CHi Minh');
INSERT INTO `address` (`id`, `Addres`) VALUES ('4', 'TP Ha Noi');
INSERT INTO `address` (`id`, `Addres`) VALUES ('5', 'TP Vinh');

INSERT INTO `classes` (`id`, `Name`, `Language`, `Decription`) VALUES ('1', 'Toan', 'Viet Nam', 'Toan cap 3');
INSERT INTO `classes` (`id`, `Name`, `Language`, `Decription`) VALUES ('2', 'Ly', 'Italya', 'Ly Nang cao');
INSERT INTO `classes` (`id`, `Name`, `Language`, `Decription`) VALUES ('3', 'Hoa', 'Viet Nam', 'Hoa cap 3');
INSERT INTO `classes` (`id`, `Name`, `Language`, `Decription`) VALUES ('4', 'Van Hoc', 'China', 'Van hoc Trung Quoc');
INSERT INTO `classes` (`id`, `Name`, `Language`, `Decription`) VALUES ('5', 'Anh Van', 'EngLish', 'Tieng Anh co ban');

INSERT INTO `students` (`id`, `FullName`, `addres_id`, `Age`, `Phone`) VALUES ('1', 'Nguyen Trong Hoag', '1', '18', '0123456789');
INSERT INTO `students` (`id`, `FullName`, `addres_id`, `Age`, `Phone`) VALUES ('2', 'Tran Van Huy', '2', '20', '0324556789');
INSERT INTO `students` (`id`, `FullName`, `addres_id`, `Age`, `Phone`) VALUES ('3', 'Le Hoang Duc', '4', '19', '0423256789');
INSERT INTO `students` (`id`, `FullName`, `addres_id`, `Age`, `Phone`) VALUES ('4', 'Nguyen Viet Quan', '1', '20', '0523457889');
INSERT INTO`students` (`id`, `FullName`, `addres_id`, `Age`, `Phone`) VALUES ('5', 'Dang Phuoc Quy', '3', '18', '0623456789');
INSERT INTO `students` (`id`, `FullName`, `addres_id`, `Age`, `Phone`) VALUES ('6', 'Nguyen Thi My', '2', '21', '0723236789');
INSERT INTO `students` (`id`, `FullName`, `addres_id`, `Age`, `Phone`) VALUES ('7', 'Le Thi Dieu Huyen', '3', '18', '0823456759');
INSERT INTO `students` (`id`, `FullName`, `addres_id`, `Age`, `Phone`) VALUES ('8', 'Tran Van Duc', '1', '19', '0423446789');
INSERT INTO `students` (`id`, `FullName`, `addres_id`, `Age`, `Phone`) VALUES ('9', 'Mai Xuan Hoa', '4', '20', '0745456789');
INSERT INTO `students` (`id`, `FullName`, `addres_id`, `Age`, `Phone`) VALUES ('10', 'Dang Van Quang', '5', '21', '0923456789');
UPDATE `students` SET `Classes_id` = '1' WHERE (`id` = '1');
UPDATE `students` SET `Classes_id` = '2' WHERE (`id` = '2');
UPDATE `students` SET `Classes_id` = '3' WHERE (`id` = '3');
UPDATE `students` SET `Classes_id` = '4' WHERE (`id` = '4');
UPDATE `students` SET `Classes_id` = '5' WHERE (`id` = '5');
UPDATE `students` SET `Classes_id` = '1' WHERE (`id` = '6');
UPDATE `students` SET `Classes_id` = '2' WHERE (`id` = '7');
UPDATE `students` SET `Classes_id` = '3' WHERE (`id` = '8');
UPDATE `students` SET `Classes_id` = '4' WHERE (`id` = '9');
UPDATE `students` SET `Classes_id` = '4' WHERE (`id` = '10');

INSERT INTO `course` (`id`, `Name`, `Decription`) VALUES ('1', 'Khoa 3', 'Toan, Ly, Hoa');
INSERT INTO `course` (`id`, `Name`, `Decription`) VALUES ('2', 'Khoa 5', 'Toan, Ly, Hoa, Van, Anh Van');
INSERT INTO `course` (`id`, `Name`) VALUES ('3', 'Khoa 1');
INSERT INTO `course` (`id`, `Name`) VALUES ('4', 'Khoa 2');
INSERT INTO `course` (`id`, `Name`) VALUES ('5', 'Khoa 4');
INSERT INTO `course` (`id`, `Name`) VALUES ('6', 'Khoa 6');
INSERT INTO `course` (`id`, `Name`) VALUES ('7', 'Khoa 7');
INSERT INTO `course` (`id`, `Name`) VALUES ('8', 'Khoa 8');
INSERT INTO `course` (`id`, `Name`) VALUES ('9', 'Khoa 9');
INSERT INTO `course` (`id`, `Name`) VALUES ('10', 'Khoa 10');
INSERT INTO `course` (`id`, `Name`) VALUES ('11', 'Khoa 11');
INSERT INTO `course` (`id`, `Name`) VALUES ('12', 'Khoa 12');
INSERT INTO `course` (`id`, `Name`) VALUES ('13', 'Khoa 13');
INSERT INTO `course` (`id`, `Name`) VALUES ('14', 'Khoa 14');
INSERT INTO `course` (`id`, `Name`) VALUES ('15', 'Khoa 15');
INSERT INTO `course` (`id`, `Name`) VALUES ('16', 'Khoa16');
INSERT INTO `course` (`id`, `Name`) VALUES ('17', 'Khoa 17');
INSERT INTO `course` (`id`, `Name`) VALUES ('18', 'Khoa 18');
INSERT INTO `course` (`id`, `Name`) VALUES ('19', 'Khoa 19');
INSERT INTO `course` (`id`, `Name`) VALUES ('20', 'Khoa 20');

INSERT INTO `point` (`id`, `course_id`, `student_id`, `point`) VALUES ('1', '1', '1', '6.5');
INSERT INTO `point` (`id`, `course_id`, `student_id`, `point`) VALUES ('2', '2', '2', '7.5');
INSERT INTO `point` (`id`, `course_id`, `student_id`, `point`) VALUES ('3', '1', '3', '8.5');
INSERT INTO `point` (`id`, `course_id`, `student_id`, `point`) VALUES ('4', '2', '4', '6.8');
INSERT INTO `point` (`id`, `course_id`, `student_id`, `point`) VALUES ('5', '1', '5', '7.0');
INSERT INTO `point` (`id`, `course_id`, `student_id`, `point`) VALUES ('6', '2', '6', '9.0');
INSERT INTO `point` (`id`, `course_id`, `student_id`, `point`) VALUES ('7', '1', '7', '7.5');
INSERT INTO `point` (`id`, `course_id`, `student_id`, `point`) VALUES ('8', '2', '8', '8.5');
INSERT INTO `point` (`id`, `course_id`, `student_id`, `point`) VALUES ('9', '1', '9', '7.6');
INSERT INTO `point` (`id`, `course_id`, `student_id`, `point`) VALUES ('10', '2', '10', '8.4');
INSERT INTO `point` (`id`, `course_id`, `student_id`, `point`) VALUES ('11', '1', '1', '6.3');
INSERT INTO `point` (`id`, `course_id`, `student_id`, `point`) VALUES ('12', '1', '2', '8.5');
INSERT INTO `point` (`id`, `course_id`, `student_id`, `point`) VALUES ('13', '2', '3', '9.5');
INSERT INTO `point` (`id`, `course_id`, `student_id`, `point`) VALUES ('14', '1', '4', '7.4');
INSERT INTO `point` (`id`, `course_id`, `student_id`, `point`) VALUES ('15', '1', '5', '6.8');

-- Tim kiem hoc vien co ho Nguyen
Select * from students where FullName like 'Nguyen%';

-- Tim kiem hoc vien co ten Anh
select * from students where FullName like '%Anh';

-- Tim kiem hoc vien co do tuoi tu 15-18
select * from students where age between 15 and 18;

-- Tim kiem hoc vien co id là 12 hoac 13
select * from students where id =1 or id =13;

-- Thong ke hoc vien cac lop
select classes.name as Lop, count(name) as SoHocVien from students
join classes on students.classes_id= classes.id  group by Classes_id;

-- Thong ke so luong hoc vien tai cac tinh
select address.Addres as Tinh, count(Addres) as SoHocVien from students 
join address on students.addres_id = address.id group by addres_id;

-- Tinh diem trung binh cac khoa hoc
select course.id, course.Name as KhoaHoc, avg(course.name) as DiemTrungBinh from point  
join course on point.course_id = course.id group by point;

-- Lay ra diem cao nhat, thap nhat
select students.FullName as Tenhocvien, max(Fullname) from point 
join students on point.student_id = students.id group by point;