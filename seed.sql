INSERT INTO users (name, email) VALUES ('Siew Leng', 'sl@ga.com');
INSERT INTO users (name, email) VALUES ('hongchiong', 'hc@ga.com');
INSERT INTO users (name, email) VALUES ('Akira', 'ak@ga.com');

INSERT INTO posts (content, users_id) VALUES ('Vegetarian Food', 1);
INSERT INTO posts (content, users_id) VALUES ('Dabao', 1);
INSERT INTO posts (content, users_id) VALUES ('Bak Chor Mee', 2);

INSERT INTO likes (post_id, users_id) VALUES (2, 1);
INSERT INTO likes (post_id, users_id) VALUES (1, 1);
INSERT INTO likes (post_id, users_id) VALUES (2, 2);

INSERT INTO friends (users_id, friend_id) VALUES (1, 2);
INSERT INTO friends (users_id, friend_id) VALUES (3, 1);