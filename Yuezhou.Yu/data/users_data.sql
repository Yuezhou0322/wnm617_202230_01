CREATE TABLE IF NOT EXISTS `track_202230_users` (
`id` INT NULL,
`name` VARCHAR(MAX) NULL,
`username` VARCHAR(MAX) NULL,
`email` VARCHAR(MAX) NULL,
`password` VARCHAR(MAX) NULL,
`img` VARCHAR(MAX) NULL,
`date_create` VARCHAR(MAX) NULL
);

INSERT INTO track_202230_users VALUES
(1,'Dennis Ingram','user1','user1@gmail.com',md5('pass'),'https://via.placeholder.com/400/805/fff/?text=user1','2022-03-01 05:02:09'),
(2,'Weaver Cunningham','user2','user2@gmail.com',md5('pass'),'https://via.placeholder.com/400/763/fff/?text=user2','2022-01-03 03:04:51'),
(3,'Erma Sanchez','user3','user3@gmail.com',md5('pass'),'https://via.placeholder.com/400/781/fff/?text=user3','2022-03-01 11:05:42'),
(4,'Fanny Carroll','user4','user4@gmail.com',md5('pass'),'https://via.placeholder.com/400/713/fff/?text=user4','2022-03-20 10:48:45'),
(5,'Selma Sharpe','user5','user5@gmail.com',md5('pass'),'https://via.placeholder.com/400/985/fff/?text=user5','2022-03-21 01:12:33'),
(6,'Glenn Alston','user6','user6@gmail.com',md5('pass'),'https://via.placeholder.com/400/745/fff/?text=user6','2022-04-04 02:55:13'),
(7,'Theresa Riddle','user7','user7@gmail.com',md5('pass'),'https://via.placeholder.com/400/766/fff/?text=user7','2022-01-10 01:54:01'),
(8,'Jodie Jennings','user8','user8@gmail.com',md5('pass'),'https://via.placeholder.com/400/808/fff/?text=user8','2022-01-16 04:03:06'),
(9,'Alana Luna','user9','user9@gmail.com',md5('pass'),'https://via.placeholder.com/400/856/fff/?text=user9','2022-01-18 07:04:59'),
(10,'Eaton Puckett','user10','user10@gmail.com',md5('pass'),'https://via.placeholder.com/400/941/fff/?text=user10','2022-01-28 09:16:59');