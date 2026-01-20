-- seeds é um valor inicial que voce coloca nas tabelas. Exatamente uma sementinha de registros para nossa tabela não começar vazia.

-- Seed for tbl_collections (Pokémon TCG sets)
INSERT INTO tbl_collections (collectionSetName, releaseDate, totalCardsInCollection)
VALUES
('Base Set', '1999-01-09', 102),
('Jungle', '1999-06-16', 64),
('Fossil', '1999-10-10', 62);

-- Seed for tbl_types (Pokémon elemental types)
INSERT INTO tbl_types (typeName)
VALUES
('Grass'),
('Fire'),
('Water'),
('Lightning'),
('Psychic'),
('Fighting'),
('Colorless');

-- Seed for tbl_stages (Pokémon evolution stages)
INSERT INTO tbl_stages (stageName)
VALUES
('Basic'),
('Stage 1'),
('Stage 2');

-- Seed for tbl_cards (sample Pokémon cards)
INSERT INTO tbl_cards (
    hp, name, info, attack, damage, weak, resis, retreat,
    cardNumberInCollection, collection_id, type_id, stage_id
)
VALUES
-- Base Set
(60, 'Bulbasaur', 'Seed Pokémon', 'Vine Whip', '20', 'Fire', '', '1',
 1, 1, 1, 1), -- Basic Grass Pokémon

(50, 'Charmander', 'Lizard Pokémon', 'Ember', '30', 'Water', '', '1',
 4, 1, 2, 1), -- Basic Fire Pokémon

(40, 'Squirtle', 'Tiny Turtle Pokémon', 'Bubble', '10', 'Lightning', '', '1',
 7, 1, 3, 1), -- Basic Water Pokémon

(40, 'Pikachu', 'Mouse Pokémon', 'Thunder Jolt', '30', 'Fighting', 'Steel', '1',
 58, 1, 4, 1), -- Basic Lightning Pokémon

-- Jungle Set
(70, 'Eevee', 'Evolution Pokémon', 'Quick Attack', '20+', 'Fighting', 'Psychic', '1',
 55, 2, 7, 1), -- Basic Colorless Pokémon

(80, 'Scyther', 'Mantis Pokémon', 'Slash', '30', 'Fire', 'Fighting', '1',
 10, 2, 1, 1), -- Basic Grass Pokémon

-- Fossil Set
(90, 'Lapras', 'Transport Pokémon', 'Water Gun', '10+', 'Lightning', '', '2',
 25, 3, 3, 1), -- Basic Water Pokémon

(100, 'Aerodactyl', 'Fossil Pokémon', 'Wing Attack', '30', 'Lightning', 'Fighting', '2',
 1, 3, 7, 2); -- Stage 1 Colorless Pokémon
