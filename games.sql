CREATE TABLE genres (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE games (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(500),
    year_released INT,
    completion_order INT NOT NULL,
    image_cover VARCHAR(50),
    dlc BOOLEAN
);

CREATE TABLE game_genres (
    game_id INT REFERENCES games(id) ON DELETE CASCADE,
    genre_id INT REFERENCES genres(id) ON DELETE CASCADE,
    PRIMARY KEY (game_id, genre_id)
);