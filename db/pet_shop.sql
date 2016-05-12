-- Shops have many Pets
CREATE TABLE shop (
  id SERIAL4 primary key,
  name VARCHAR(255),
  address VARCHAR(255),
  stock_type VARCHAR(255)
);

-- INSERT INTO "shop" (name, address, stock_type) VALUES ("Respectable Rodents", "20 Princess Street Edinburgh", "Crawley")
-- INSERT INTO "shop" (name, address, stock_type) VALUES ("Loving Lizards", "10 George Street", "Scaley")
-- INSERT INTO "shop" (name, address, stock_type) VALUES ("Insincere Insects", "15 Queen Street Edinburgh", "Itchy")

-- Pets are referenced to one shop
CREATE TABLE pet (
  id SERIAL4 primary key,
  name VARCHAR(255),
  pet_type VARCHAR(255),
  shop_id INT4 references shop(id) ON DELETE CASCADE
  -- ON DELETE CASCADE deletes all associations with the reference shop_id
);

-- INSERT INTO "pet" (name, pet_type, shop_id) VALUES ('Rick Henry', 'Iguana', '' ), ('Jay Chetty'), ('Keith Douglas'), ('Valerie Gibson');
-- INSERT INTO "users" (name, pet_type, shop_id) VALUES ('Steven Meiklejohn', ), ('Zak Buys'), ('Harry Swan'),
-- ('Henry Dashwood'),
-- ('Seumus Blair'),
-- ('David MacKintosh'),
-- ('Allan Harrison'),
-- ('Chris Wood'),
-- ('Adam Pinner'),
-- ('Jeffrey Lloyd'),
-- ('Alistair MacKay'),
-- ('Andrew Craib'),
-- ('Rebecca Kelly'),
-- ('Hamish Edmondson'),
-- ('Wojciech Tartanus'),
-- ('Donald Lessels'),
-- ('Aidan Pinkman'),
-- ('Lewis Johnston');
