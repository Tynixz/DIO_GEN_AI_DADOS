-- More 30 Pokémon cards

INSERT INTO tbl_cards (hp, name, info, attack, damage, weak, resis, retreat,
    cardNumberInCollection, collection_id, type_id, stage_id)
VALUES
-- Base Set (collection_id = 1)
(60, 'Caterpie', 'Worm Pokémon', 'String Shot', '10', 'Fire', '', '1', 45, 1, 1, 1),
(70, 'Metapod', 'Cocoon Pokémon', 'Stiffen', '—', 'Fire', '', '2', 54, 1, 1, 2),
(90, 'Butterfree', 'Butterfly Pokémon', 'Whirlwind', '20', 'Fire', '', '1', 33, 1, 1, 3),
(50, 'Pidgey', 'Tiny Bird Pokémon', 'Gust', '20', 'Lightning', '', '1', 57, 1, 7, 1),
(80, 'Pidgeotto', 'Bird Pokémon', 'Whirlwind', '20', 'Lightning', '', '1', 22, 1, 7, 2),
(120, 'Pidgeot', 'Bird Pokémon', 'Hurricane', '30', 'Lightning', '', '2', 8, 1, 7, 3),
(70, 'Rattata', 'Mouse Pokémon', 'Bite', '20', 'Fighting', '', '1', 61, 1, 7, 1),
(90, 'Raticate', 'Mouse Pokémon', 'Super Fang', '—', 'Fighting', '', '1', 40, 1, 7, 2),
(100, 'Arcanine', 'Legendary Pokémon', 'Flamethrower', '50', 'Water', '', '3', 23, 1, 2, 2),
(120, 'Ninetales', 'Fox Pokémon', 'Fire Blast', '80', 'Water', '', '2', 12, 1, 2, 2),

-- Jungle (collection_id = 2)
(60, 'Cubone', 'Lonely Pokémon', 'Bone Club', '20', 'Grass', '', '1', 50, 2, 6, 1),
(80, 'Marowak', 'Bone Keeper Pokémon', 'Bonemerang', '30x', 'Grass', '', '2', 39, 2, 6, 2),
(100, 'Tauros', 'Wild Bull Pokémon', 'Rampage', '20+', 'Fighting', '', '2', 51, 2, 6, 1),
(70, 'Doduo', 'Twin Bird Pokémon', 'Fury Attack', '10x', 'Lightning', '', '1', 48, 2, 7, 1),
(90, 'Dodrio', 'Triple Bird Pokémon', 'Rage', '10+', 'Lightning', '', '2', 34, 2, 7, 2),
(100, 'Venomoth', 'Poison Moth Pokémon', 'Venom Powder', '10', 'Fire', '', '2', 13, 2, 1, 2),
(80, 'Exeggcute', 'Egg Pokémon', 'Hypnosis', '—', 'Fire', '', '1', 52, 2, 1, 1),
(100, 'Exeggutor', 'Coconut Pokémon', 'Teleport', '20', 'Fire', '', '2', 35, 2, 1, 2),
(90, 'Seaking', 'Goldfish Pokémon', 'Horn Attack', '30', 'Lightning', '', '1', 44, 2, 3, 1),
(120, 'Vaporeon', 'Bubble Jet Pokémon', 'Water Gun', '30+', 'Lightning', '', '2', 12, 2, 3, 2),

-- Fossil (collection_id = 3)
(60, 'Horsea', 'Dragon Pokémon', 'Smokescreen', '10', 'Lightning', '', '1', 50, 3, 3, 1),
(80, 'Seadra', 'Dragon Pokémon', 'Water Gun', '20+', 'Lightning', '', '1', 42, 3, 3, 2),
(100, 'Kingler', 'Pincer Pokémon', 'Crabhammer', '40', 'Lightning', '', '2', 34, 3, 3, 2),
(90, 'Krabby', 'River Crab Pokémon', 'Vice Grip', '10', 'Lightning', '', '1', 51, 3, 3, 1),
(120, 'Magneton', 'Magnet Pokémon', 'Thunder Wave', '30', 'Fighting', '', '2', 11, 3, 4, 2),
(100, 'Magnemite', 'Magnet Pokémon', 'Thunder Wave', '10', 'Fighting', '', '1', 53, 3, 4, 1),
(90, 'Hypno', 'Hypnosis Pokémon', 'Prophecy', '—', 'Psychic', '', '2', 8, 3, 5, 2),
(80, 'Drowzee', 'Hypnosis Pokémon', 'Pound', '10', 'Psychic', '', '1', 49, 3, 5, 1),
(100, 'Hitmonlee', 'Kicking Pokémon', 'Stretch Kick', '30', 'Psychic', '', '2', 7, 3, 6, 1),
(120, 'Chansey', 'Egg Pokémon', 'Double-Edge', '80', 'Fighting', '', '1', 3, 3, 7, 1);
