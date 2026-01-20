--File created by "to_migration.ps1"
-- seeds Ã© um valor inicial que voce coloca nas tabelas. Exatamente uma sementinha de registros para nossa tabela nÃ£o comeÃ§ar vazia.

-- Seed for tbl_collections (PokÃ©mon TCG sets)
INSERT INTO tbl_collections (collectionSetName, releaseDate, totalCardsInCollection)
VALUES
('Base Set', '1999-01-09', 102),
('Jungle', '1999-06-16', 64),
('Fossil', '1999-10-10', 62);

-- Seed for tbl_types (PokÃ©mon elemental types)
INSERT INTO tbl_types (typeName)
VALUES
('Grass'),
('Fire'),
('Water'),
('Lightning'),
('Psychic'),
('Fighting'),
('Colorless');

-- Seed for tbl_stages (PokÃ©mon evolution stages)
INSERT INTO tbl_stages (stageName)
VALUES
('Basic'),
('Stage 1'),
('Stage 2');

-- Seed for tbl_cards (sample PokÃ©mon cards)
INSERT INTO tbl_cards (
    hp, name, info, attack, damage, weak, resis, retreat,
    cardNumberInCollection, collection_id, type_id, stage_id
)
VALUES
-- Base Set
(60, 'Bulbasaur', 'Seed PokÃ©mon', 'Vine Whip', '20', 'Fire', '', '1',
 1, 1, 1, 1), -- Basic Grass PokÃ©mon

(50, 'Charmander', 'Lizard PokÃ©mon', 'Ember', '30', 'Water', '', '1',
 4, 1, 2, 1), -- Basic Fire PokÃ©mon

(40, 'Squirtle', 'Tiny Turtle PokÃ©mon', 'Bubble', '10', 'Lightning', '', '1',
 7, 1, 3, 1), -- Basic Water PokÃ©mon

(40, 'Pikachu', 'Mouse PokÃ©mon', 'Thunder Jolt', '30', 'Fighting', 'Steel', '1',
 58, 1, 4, 1), -- Basic Lightning PokÃ©mon

-- Jungle Set
(70, 'Eevee', 'Evolution PokÃ©mon', 'Quick Attack', '20+', 'Fighting', 'Psychic', '1',
 55, 2, 7, 1), -- Basic Colorless PokÃ©mon

(80, 'Scyther', 'Mantis PokÃ©mon', 'Slash', '30', 'Fire', 'Fighting', '1',
 10, 2, 1, 1), -- Basic Grass PokÃ©mon

-- Fossil Set
(90, 'Lapras', 'Transport PokÃ©mon', 'Water Gun', '10+', 'Lightning', '', '2',
 25, 3, 3, 1), -- Basic Water PokÃ©mon

(100, 'Aerodactyl', 'Fossil PokÃ©mon', 'Wing Attack', '30', 'Lightning', 'Fighting', '2',
 1, 3, 7, 2); -- Stage 1 Colorless PokÃ©mon
-- 20 sample PokÃ©mon cards

INSERT INTO tbl_cards (hp, name, info, attack, damage, weak, resis, retreat,
    cardNumberInCollection, collection_id, type_id, stage_id)
VALUES
-- Base Set (collection_id = 1)
(60, 'Bulbasaur', 'Seed PokÃ©mon', 'Vine Whip', '20', 'Fire', '', '1', 1, 1, 1, 1),
(50, 'Charmander', 'Lizard PokÃ©mon', 'Ember', '30', 'Water', '', '1', 4, 1, 2, 1),
(40, 'Squirtle', 'Tiny Turtle PokÃ©mon', 'Bubble', '10', 'Lightning', '', '1', 7, 1, 3, 1),
(40, 'Pikachu', 'Mouse PokÃ©mon', 'Thunder Jolt', '30', 'Fighting', 'Steel', '1', 58, 1, 4, 1),
(80, 'Ivysaur', 'Seed PokÃ©mon', 'Razor Leaf', '30', 'Fire', '', '2', 30, 1, 1, 2),
(90, 'Charmeleon', 'Flame PokÃ©mon', 'Flamethrower', '50', 'Water', '', '2', 24, 1, 2, 2),
(100, 'Blastoise', 'Shellfish PokÃ©mon', 'Hydro Pump', '40+', 'Lightning', '', '3', 2, 1, 3, 3),
(120, 'Venusaur', 'Seed PokÃ©mon', 'Solarbeam', '60', 'Fire', '', '3', 15, 1, 1, 3),

-- Jungle (collection_id = 2)
(70, 'Eevee', 'Evolution PokÃ©mon', 'Quick Attack', '20+', 'Fighting', 'Psychic', '1', 55, 2, 7, 1),
(80, 'Scyther', 'Mantis PokÃ©mon', 'Slash', '30', 'Fire', 'Fighting', '1', 10, 2, 1, 1),
(90, 'Snorlax', 'Sleeping PokÃ©mon', 'Body Slam', '30', 'Fighting', 'Psychic', '4', 11, 2, 7, 1),
(100, 'Kangaskhan', 'Parent PokÃ©mon', 'Comet Punch', '20x', 'Fighting', 'Psychic', '3', 5, 2, 7, 1),
(70, 'Jigglypuff', 'Balloon PokÃ©mon', 'Lullaby', 'â€”', 'Psychic', '', '1', 54, 2, 7, 1),
(80, 'Wigglytuff', 'Balloon PokÃ©mon', 'Do the Wave', '10x', 'Psychic', '', '2', 32, 2, 7, 2),
(90, 'Nidoqueen', 'Drill PokÃ©mon', 'Mega Punch', '40', 'Psychic', '', '3', 7, 2, 6, 2),

-- Fossil (collection_id = 3)
(90, 'Lapras', 'Transport PokÃ©mon', 'Water Gun', '10+', 'Lightning', '', '2', 25, 3, 3, 1),
(100, 'Aerodactyl', 'Fossil PokÃ©mon', 'Wing Attack', '30', 'Lightning', 'Fighting', '2', 1, 3, 7, 2),
(80, 'Kabuto', 'Shellfish PokÃ©mon', 'Scratch', '20', 'Grass', '', '1', 9, 3, 6, 1),
(90, 'Kabutops', 'Shellfish PokÃ©mon', 'Slash', '30', 'Grass', '', '2', 24, 3, 6, 2),
(100, 'Articuno', 'Freeze PokÃ©mon', 'Blizzard', '50', 'Metal', '', '2', 2, 3, 3, 1);
-- Additional 30 PokÃ©mon cards

INSERT INTO tbl_cards (hp, name, info, attack, damage, weak, resis, retreat,
    cardNumberInCollection, collection_id, type_id, stage_id)
VALUES
-- Base Set (collection_id = 1)
(60, 'Gastly', 'Gas PokÃ©mon', 'Lick', '10', 'Psychic', '', '1', 33, 1, 5, 1),
(70, 'Haunter', 'Gas PokÃ©mon', 'Nightmare', '10', 'Psychic', '', '1', 29, 1, 5, 2),
(100, 'Gengar', 'Shadow PokÃ©mon', 'Dark Mind', '30', 'Psychic', '', '2', 5, 1, 5, 3),
(90, 'Machop', 'Superpower PokÃ©mon', 'Low Kick', '20', 'Psychic', '', '1', 52, 1, 6, 1),
(100, 'Machoke', 'Superpower PokÃ©mon', 'Karate Chop', '50', 'Psychic', '', '2', 34, 1, 6, 2),
(120, 'Machamp', 'Superpower PokÃ©mon', 'Seismic Toss', '60', 'Psychic', '', '3', 8, 1, 6, 3),
(70, 'Abra', 'Psi PokÃ©mon', 'Psyshock', '10', 'Psychic', '', '1', 43, 1, 5, 1),
(80, 'Kadabra', 'Psi PokÃ©mon', 'Recover', 'â€”', 'Psychic', '', '2', 32, 1, 5, 2),
(100, 'Alakazam', 'Psi PokÃ©mon', 'Confuse Ray', '30', 'Psychic', '', '3', 1, 1, 5, 3),
(90, 'Hitmonchan', 'Punching PokÃ©mon', 'Special Punch', '40', 'Psychic', '', '2', 7, 1, 6, 1),

-- Jungle (collection_id = 2)
(60, 'Oddish', 'Weed PokÃ©mon', 'Stun Spore', '10', 'Fire', '', '1', 58, 2, 1, 1),
(80, 'Gloom', 'Weed PokÃ©mon', 'Poisonpowder', '20', 'Fire', '', '2', 36, 2, 1, 2),
(100, 'Vileplume', 'Flower PokÃ©mon', 'Petal Dance', '40x', 'Fire', '', '2', 13, 2, 1, 3),
(70, 'Meowth', 'Scratch Cat PokÃ©mon', 'Pay Day', '10', 'Fighting', '', '1', 56, 2, 7, 1),
(90, 'Persian', 'Classy Cat PokÃ©mon', 'Scratch', '20', 'Fighting', '', '1', 42, 2, 7, 2),
(100, 'Clefable', 'Fairy PokÃ©mon', 'Metronome', 'â€”', 'Fighting', '', '2', 1, 2, 7, 2),
(60, 'Paras', 'Mushroom PokÃ©mon', 'Scratch', '20', 'Fire', '', '1', 57, 2, 1, 1),
(80, 'Parasect', 'Mushroom PokÃ©mon', 'Spore', 'â€”', 'Fire', '', '2', 35, 2, 1, 2),
(90, 'Pinsir', 'Stag Beetle PokÃ©mon', 'Guillotine', '50', 'Fire', '', '2', 9, 2, 1, 1),
(100, 'Electrode', 'Ball PokÃ©mon', 'Explosion', 'â€”', 'Fighting', '', '2', 2, 2, 4, 2),

-- Fossil (collection_id = 3)
(60, 'Zubat', 'Bat PokÃ©mon', 'Leech Life', '10', 'Psychic', '', '1', 57, 3, 6, 1),
(80, 'Golbat', 'Bat PokÃ©mon', 'Wing Attack', '30', 'Psychic', '', '1', 33, 3, 6, 2),
(100, 'Muk', 'Sludge PokÃ©mon', 'Sludge', '30', 'Psychic', '', '2', 13, 3, 5, 2),
(90, 'Grimer', 'Sludge PokÃ©mon', 'Poison Gas', '10', 'Psychic', '', '1', 48, 3, 5, 1),
(120, 'Ditto', 'Transform PokÃ©mon', 'Transform', 'â€”', 'Fighting', '', '1', 3, 3, 7, 1),
(100, 'Moltres', 'Flame PokÃ©mon', 'Wildfire', '30', 'Water', '', '2', 12, 3, 2, 1),
(100, 'Zapdos', 'Electric PokÃ©mon', 'Thunderstorm', '40', 'Fighting', '', '2', 15, 3, 4, 1),
(100, 'Dragonite', 'Dragon PokÃ©mon', 'Slam', '40x', 'Colorless', '', '2', 4, 3, 7, 3),
(90, 'Omanyte', 'Spiral PokÃ©mon', 'Water Gun', '10+', 'Grass', '', '1', 52, 3, 3, 1),
(100, 'Omastar', 'Spiral PokÃ©mon', 'Hydro Pump', '30+', 'Grass', '', '2', 26, 3, 3, 2);
-- More 30 PokÃ©mon cards

INSERT INTO tbl_cards (hp, name, info, attack, damage, weak, resis, retreat,
    cardNumberInCollection, collection_id, type_id, stage_id)
VALUES
-- Base Set (collection_id = 1)
(60, 'Caterpie', 'Worm PokÃ©mon', 'String Shot', '10', 'Fire', '', '1', 45, 1, 1, 1),
(70, 'Metapod', 'Cocoon PokÃ©mon', 'Stiffen', 'â€”', 'Fire', '', '2', 54, 1, 1, 2),
(90, 'Butterfree', 'Butterfly PokÃ©mon', 'Whirlwind', '20', 'Fire', '', '1', 33, 1, 1, 3),
(50, 'Pidgey', 'Tiny Bird PokÃ©mon', 'Gust', '20', 'Lightning', '', '1', 57, 1, 7, 1),
(80, 'Pidgeotto', 'Bird PokÃ©mon', 'Whirlwind', '20', 'Lightning', '', '1', 22, 1, 7, 2),
(120, 'Pidgeot', 'Bird PokÃ©mon', 'Hurricane', '30', 'Lightning', '', '2', 8, 1, 7, 3),
(70, 'Rattata', 'Mouse PokÃ©mon', 'Bite', '20', 'Fighting', '', '1', 61, 1, 7, 1),
(90, 'Raticate', 'Mouse PokÃ©mon', 'Super Fang', 'â€”', 'Fighting', '', '1', 40, 1, 7, 2),
(100, 'Arcanine', 'Legendary PokÃ©mon', 'Flamethrower', '50', 'Water', '', '3', 23, 1, 2, 2),
(120, 'Ninetales', 'Fox PokÃ©mon', 'Fire Blast', '80', 'Water', '', '2', 12, 1, 2, 2),

-- Jungle (collection_id = 2)
(60, 'Cubone', 'Lonely PokÃ©mon', 'Bone Club', '20', 'Grass', '', '1', 50, 2, 6, 1),
(80, 'Marowak', 'Bone Keeper PokÃ©mon', 'Bonemerang', '30x', 'Grass', '', '2', 39, 2, 6, 2),
(100, 'Tauros', 'Wild Bull PokÃ©mon', 'Rampage', '20+', 'Fighting', '', '2', 51, 2, 6, 1),
(70, 'Doduo', 'Twin Bird PokÃ©mon', 'Fury Attack', '10x', 'Lightning', '', '1', 48, 2, 7, 1),
(90, 'Dodrio', 'Triple Bird PokÃ©mon', 'Rage', '10+', 'Lightning', '', '2', 34, 2, 7, 2),
(100, 'Venomoth', 'Poison Moth PokÃ©mon', 'Venom Powder', '10', 'Fire', '', '2', 13, 2, 1, 2),
(80, 'Exeggcute', 'Egg PokÃ©mon', 'Hypnosis', 'â€”', 'Fire', '', '1', 52, 2, 1, 1),
(100, 'Exeggutor', 'Coconut PokÃ©mon', 'Teleport', '20', 'Fire', '', '2', 35, 2, 1, 2),
(90, 'Seaking', 'Goldfish PokÃ©mon', 'Horn Attack', '30', 'Lightning', '', '1', 44, 2, 3, 1),
(120, 'Vaporeon', 'Bubble Jet PokÃ©mon', 'Water Gun', '30+', 'Lightning', '', '2', 12, 2, 3, 2),

-- Fossil (collection_id = 3)
(60, 'Horsea', 'Dragon PokÃ©mon', 'Smokescreen', '10', 'Lightning', '', '1', 50, 3, 3, 1),
(80, 'Seadra', 'Dragon PokÃ©mon', 'Water Gun', '20+', 'Lightning', '', '1', 42, 3, 3, 2),
(100, 'Kingler', 'Pincer PokÃ©mon', 'Crabhammer', '40', 'Lightning', '', '2', 34, 3, 3, 2),
(90, 'Krabby', 'River Crab PokÃ©mon', 'Vice Grip', '10', 'Lightning', '', '1', 51, 3, 3, 1),
(120, 'Magneton', 'Magnet PokÃ©mon', 'Thunder Wave', '30', 'Fighting', '', '2', 11, 3, 4, 2),
(100, 'Magnemite', 'Magnet PokÃ©mon', 'Thunder Wave', '10', 'Fighting', '', '1', 53, 3, 4, 1),
(90, 'Hypno', 'Hypnosis PokÃ©mon', 'Prophecy', 'â€”', 'Psychic', '', '2', 8, 3, 5, 2),
(80, 'Drowzee', 'Hypnosis PokÃ©mon', 'Pound', '10', 'Psychic', '', '1', 49, 3, 5, 1),
(100, 'Hitmonlee', 'Kicking PokÃ©mon', 'Stretch Kick', '30', 'Psychic', '', '2', 7, 3, 6, 1),
(120, 'Chansey', 'Egg PokÃ©mon', 'Double-Edge', '80', 'Fighting', '', '1', 3, 3, 7, 1);
