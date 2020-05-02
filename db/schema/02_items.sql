-- Drop and recreate items table (Example)

DROP TABLE IF EXISTS items CASCADE;
CREATE TABLE items (
  id SERIAL PRIMARY KEY NOT NULL,
  admin_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  name VARCHAR(255) NOT NULL,
  title VARCHAR(100) NOT NULL,
  price INTEGER  NOT NULL DEFAULT 0,
  colour VARCHAR(50) NOT NULL,
  size INTEGER  NOT NULL DEFAULT 0,
  description TEXT,
  thumbnail_photo_url VARCHAR(255) NOT NULL,
  cover_photo_url VARCHAR(255) NOT NULL,
  gender VARCHAR(50) NOT NULL,
  active BOOLEAN NOT NULL DEFAULT TRUE
);
