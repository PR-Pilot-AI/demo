CREATE TABLE users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100),
    created_at TIMESTAMP
);

CREATE TABLE posts (
    post_id INT PRIMARY KEY,
    user_id INT,
    title VARCHAR(100),
    content TEXT,
    created_at TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE comments (
    comment_id INT PRIMARY KEY,
    post_id INT,
    user_id INT,
    comment TEXT,
    created_at TIMESTAMP,
    FOREIGN KEY (post_id) REFERENCES posts(post_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

INSERT INTO users (user_id, username, email, created_at) VALUES
(1, 'user1', 'user1@example.com', '2024-01-01 10:00:00'),
(2, 'user2', 'user2@example.com', '2024-01-02 11:00:00'),
(3, 'user3', 'user3@example.com', '2024-01-03 12:00:00'),
(4, 'user4', 'user4@example.com', '2024-01-04 13:00:00'),
(5, 'user5', 'user5@example.com', '2024-01-05 14:00:00'),
(6, 'user6', 'user6@example.com', '2024-01-06 15:00:00'),
(7, 'user7', 'user7@example.com', '2024-01-07 16:00:00'),
(8, 'user8', 'user8@example.com', '2024-01-08 17:00:00'),
(9, 'user9', 'user9@example.com', '2024-01-09 18:00:00'),
(10, 'user10', 'user10@example.com', '2024-01-10 19:00:00');

INSERT INTO posts (post_id, user_id, title, content, created_at) VALUES
(1, 1, 'Post 1', 'Content of post 1', '2024-02-01 10:00:00'),
(2, 2, 'Post 2', 'Content of post 2', '2024-02-02 11:00:00'),
(3, 3, 'Post 3', 'Content of post 3', '2024-02-03 12:00:00'),
(4, 4, 'Post 4', 'Content of post 4', '2024-02-04 13:00:00'),
(5, 5, 'Post 5', 'Content of post 5', '2024-02-05 14:00:00'),
(6, 6, 'Post 6', 'Content of post 6', '2024-02-06 15:00:00'),
(7, 7, 'Post 7', 'Content of post 7', '2024-02-07 16:00:00'),
(8, 8, 'Post 8', 'Content of post 8', '2024-02-08 17:00:00'),
(9, 9, 'Post 9', 'Content of post 9', '2024-02-09 18:00:00'),
(10, 10, 'Post 10', 'Content of post 10', '2024-02-10 19:00:00');

INSERT INTO comments (comment_id, post_id, user_id, comment, created_at) VALUES
(1, 1, 2, 'Comment 1 on post 1', '2024-03-01 10:00:00'),
(2, 1, 3, 'Comment 2 on post 1', '2024-03-02 11:00:00'),
(3, 2, 4, 'Comment 1 on post 2', '2024-03-03 12:00:00'),
(4, 2, 5, 'Comment 2 on post 2', '2024-03-04 13:00:00'),
(5, 3, 6, 'Comment 1 on post 3', '2024-03-05 14:00:00'),
(6, 3, 7, 'Comment 2 on post 3', '2024-03-06 15:00:00'),
(7, 4, 8, 'Comment 1 on post 4', '2024-03-07 16:00:00'),
(8, 4, 9, 'Comment 2 on post 4', '2024-03-08 17:00:00'),
(9, 5, 10, 'Comment 1 on post 5', '2024-03-09 18:00:00'),
(10, 5, 1, 'Comment 2 on post 5', '2024-03-10 19:00:00');