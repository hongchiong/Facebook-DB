CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    name TEXT,
    email TEXT
);

CREATE TABLE IF NOT EXISTS posts (
    id SERIAL PRIMARY KEY,
    content TEXT,
    users_id INTEGER
);

CREATE TABLE IF NOT EXISTS likes (
    id SERIAL PRIMARY KEY,
    post_id INTEGER,
    users_id INTEGER
);

CREATE TABLE IF NOT EXISTS friends (
    id SERIAL PRIMARY KEY,
    users_id INTEGER,
    friend_id INTEGER
);