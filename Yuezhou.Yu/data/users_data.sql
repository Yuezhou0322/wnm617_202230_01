CREATE TABLE IF NOT EXISTS `track_202230_users` (
`id` INT NULL,
`name` VARCHAR(MAX) NULL,
`username` VARCHAR(MAX) NULL,
`email` VARCHAR(MAX) NULL,
`password` VARCHAR(MAX) NULL,
`gender` VARCHAR(MAX) NULL,
`phone` VARCHAR(MAX) NULL,
`img` VARCHAR(MAX) NULL,
`date_create` VARCHAR(MAX) NULL
);

INSERT INTO track_202230_users VALUES
(1,'Paige Levine','user1','user1@gmail.com','md5(pass)','female','+1 (823) 495-2306','https://via.placeholder.com/400/945/fff/?text=user1','2022-02-15 10:02:06'),
(2,'Carmen Sawyer','user2','user2@gmail.com','md5(pass)','female','+1 (851) 558-2158','https://via.placeholder.com/400/903/fff/?text=user2','2022-03-15 05:20:26'),
(3,'Jami Andrews','user3','user3@gmail.com','md5(pass)','female','+1 (940) 530-3996','https://via.placeholder.com/400/870/fff/?text=user3','2022-02-25 04:31:47'),
(4,'Angelia Black','user4','user4@gmail.com','md5(pass)','female','+1 (972) 589-3600','https://via.placeholder.com/400/861/fff/?text=user4','2022-01-24 11:48:16'),
(5,'Rocha Singleton','user5','user5@gmail.com','md5(pass)','male','+1 (958) 593-2238','https://via.placeholder.com/400/942/fff/?text=user5','2022-02-15 04:36:28'),
(6,'Melissa Savage','user6','user6@gmail.com','md5(pass)','female','+1 (917) 463-2022','https://via.placeholder.com/400/768/fff/?text=user6','2022-04-03 06:52:49'),
(7,'Hartman Leblanc','user7','user7@gmail.com','md5(pass)','male','+1 (886) 419-2854','https://via.placeholder.com/400/986/fff/?text=user7','2022-03-03 07:41:01'),
(8,'Bennett York','user8','user8@gmail.com','md5(pass)','male','+1 (932) 406-2213','https://via.placeholder.com/400/872/fff/?text=user8','2022-01-23 05:36:26'),
(9,'Cash Hodge','user9','user9@gmail.com','md5(pass)','male','+1 (956) 456-3562','https://via.placeholder.com/400/895/fff/?text=user9','2022-04-09 08:10:31'),
(10,'Salas Norman','user10','user10@gmail.com','md5(pass)','male','+1 (839) 439-3275','https://via.placeholder.com/400/735/fff/?text=user10','2022-03-04 05:07:30');