INSERT INTO country (id, name) VALUES (1, 'Canada');
INSERT INTO country (id, name) VALUES (2, 'India');
INSERT INTO country (id, name) VALUES (3, 'Brazil');
INSERT INTO country (id, name) VALUES (4, 'United States of America');
INSERT INTO country (id, name) VALUES (5, 'Mexico');
INSERT INTO country (id, name) VALUES (6, 'France');
INSERT INTO country (id, name) VALUES (7, 'Spain');
INSERT INTO country (id, name) VALUES (8, 'England');
INSERT INTO country (id, name) VALUES (9, 'Portugal');
INSERT INTO country (id, name) VALUES (10, 'Argentina');

INSERT INTO city (id, name, country_id) VALUES (1, 'Vancouver', 1);
INSERT INTO city (id, name, country_id) VALUES (2, 'Toronto', 1);
INSERT INTO city (id, name, country_id) VALUES (3, 'Calgary', 1);
INSERT INTO city (id, name, country_id) VALUES (4, 'Richmond', 1);
INSERT INTO city (id, name, country_id) VALUES (5, 'Montreal', 1);
INSERT INTO city (id, name, country_id) VALUES (6, 'Mumbai', 2);
INSERT INTO city (id, name, country_id) VALUES (7, 'Delhi', 2);
INSERT INTO city (id, name, country_id) VALUES (8, 'Brasilia', 3);
INSERT INTO city (id, name, country_id) VALUES (9, 'Rio de Janeiro', 3);
INSERT INTO city (id, name, country_id) VALUES (10, 'Sao Paulo', 3);
INSERT INTO city (id, name, country_id) VALUES (11, 'Seattle', 4);
INSERT INTO city (id, name, country_id) VALUES (12, 'New York', 4);
INSERT INTO city (id, name, country_id) VALUES (13, 'Edmonton', 1);
INSERT INTO city (id, name, country_id) VALUES (14, 'Ottawa', 1);
INSERT INTO city (id, name, country_id) VALUES (15, 'Winnipeg', 1);
INSERT INTO city (id, name, country_id) VALUES (16, 'Hamilton', 1);
INSERT INTO city (id, name, country_id) VALUES (17, 'London', 1);
INSERT INTO city (id, name, country_id) VALUES (18, 'Victoria', 1);
INSERT INTO city (id, name, country_id) VALUES (19, 'Halifax', 1);
INSERT INTO city (id, name, country_id) VALUES (20, 'Chicago', 4);
INSERT INTO city (id, name, country_id) VALUES (21, 'Dallas', 4);
INSERT INTO city (id, name, country_id) VALUES (22, 'Orlando', 4);
INSERT INTO city (id, name, country_id) VALUES (23, 'Atlanta', 4);
INSERT INTO city (id, name, country_id) VALUES (24, 'Paris', 6);
INSERT INTO city (id, name, country_id) VALUES (25, 'Madrid', 7);
INSERT INTO city (id, name, country_id) VALUES (26, 'Manchester', 8);
INSERT INTO city (id, name, country_id) VALUES (27, 'Lisbon', 9);
INSERT INTO city (id, name, country_id) VALUES (28, 'Buenos Aires', 10);

INSERT INTO language (id, name) VALUES (1, 'English');
INSERT INTO language (id, name) VALUES (2, 'French');
INSERT INTO language (id, name) VALUES (3, 'Punjabi');
INSERT INTO language (id, name) VALUES (4, 'Spanish');
INSERT INTO language (id, name) VALUES (5, 'Portuguese');

INSERT INTO user
(id, email, password, user_type, name, city_id, birth_date, bio, mother_country_id)
VALUES (1, 'user1@email.com', 'pwd', 'S', 'A Student from India', 1, '2000-01-01', 'Bio text here...', 2);
INSERT INTO user
(id, email, password, user_type, name, city_id, birth_date, bio, mother_country_id)
VALUES (2, 'user2@email.com', 'pwd', 'S', 'A Student from Brazil', 2, '2000-01-01', 'Bio text here...', 3);
INSERT INTO user
(id, email, password, user_type, name, city_id, birth_date, bio, mother_country_id)
VALUES (3, 'user3@email.com', 'pwd', 'S', 'A Student from Mexico', 2, '2000-01-01', 'Bio text here...', 5);

INSERT INTO user
(id, email, password, user_type, name, city_id, birth_date, bio, mother_country_id)
VALUES (4, 'user4@email.com', 'pwd', 'T', 'A Teacher from Canada', 1, '2000-01-01', 'Bio text here...', 1);
INSERT INTO user
(id, email, password, user_type, name, city_id, birth_date, bio, mother_country_id)
VALUES (5, 'user5@email.com', 'pwd', 'T', 'A Teacher from USA', 2, '2000-01-01', 'Bio text here...', 4);
INSERT INTO user
(id, email, password, user_type, name, city_id, birth_date, bio, mother_country_id)
VALUES (6, 'user6@email.com', 'pwd', 'T', 'A Teacher from India', 2, '2000-01-01', 'Bio text here...', 2);

INSERT INTO teacher_language (teacher_id, language_id) VALUES (4, 1);
INSERT INTO teacher_language (teacher_id, language_id) VALUES (5, 4);
INSERT INTO teacher_language (teacher_id, language_id) VALUES (6, 2);

INSERT INTO class_type (id, name, description, teacher_id) VALUES (1, 'Hiking', 'We will go for a hiking at Grouse Mountain while we chat to make your English', 4);
INSERT INTO class_type (id, name, description, teacher_id) VALUES (2, 'Groceries', 'We will go to the supermarket and learn more vocabulary while doing groceries', 4);
INSERT INTO class_type (id, name, description, teacher_id) VALUES (3, 'Banking', 'Let`s go to the bank and learn new vocabulary there', 5);
INSERT INTO class_type (id, name, description, teacher_id) VALUES (4, 'Banking', 'Let`s go to the bank and learn new vocabulary there', 6);

INSERT INTO class
(student_id, teacher_id, date, start_time, duration, class_type, location, location_lat, location_long, price, class_completed,
rating_to_student, rating_to_teacher, review_to_teacher, review_to_student)
VALUES (1, 4, now(), '03:00 PM', '01:00', 'Hiking', 'Grouse Mountain', '1.11111', '2.22222', 15.90, true, 4, 4.5, 'Good', 'Excellent');

INSERT INTO class
(student_id, teacher_id, date, start_time, duration, class_type, location, location_lat, location_long, price, class_completed,
rating_to_student, rating_to_teacher, review_to_teacher, review_to_student)
VALUES (1, 4, now(), '03:00 PM', '01:00', 'Banking', 'CIBC Richmond', '1.11111', '2.22222', 17, true, 5, 5, 'Amazing', 'Excellent');

INSERT INTO class
(student_id, teacher_id, date, start_time, duration, class_type, location, location_lat, location_long, price, class_completed,
rating_to_student, rating_to_teacher, review_to_teacher, review_to_student)
VALUES (1, 13, now(), '03:00 PM', '01:00', 'Shopping', 'Wall Mart', '1.11111', '2.22222', 16, true, 5, 5, 'Amazing', 'Excellent');

INSERT INTO class
(student_id, teacher_id, date, start_time, duration, class_type, location, location_lat, location_long, price, class_completed,
rating_to_student, rating_to_teacher, review_to_teacher, review_to_student)
VALUES (1, 13, now(), '03:00 PM', '01:00', 'Shopping', 'Wall Mart', '1.11111', '2.22222', 16, true, 5, 2, 'Amazing', 'Excellent');

SELECT AVG(rating_to_teacher) AS average_rating_to_teacher FROM class WHERE teacher_id = 4 AND class_completed;
