-- 20 sample Pokémon cards

INSERT INTO tbl_cards (hp, name, info, attack, damage, weak, resis, retreat,
    cardNumberInCollection, collection_id, type_id, stage_id)
VALUES
-- Base Set (collection_id = 1)
(60, 'Bulbasaur', 'Seed Pokémon', 'Vine Whip', '20', 'Fire', '', '1', 1, 1, 1, 1),
(50, 'Charmander', 'Lizard Pokémon', 'Ember', '30', 'Water', '', '1', 4, 1, 2, 1),
(40, 'Squirtle', 'Tiny Turtle Pokémon', 'Bubble', '10', 'Lightning', '', '1', 7, 1, 3, 1),
(40, 'Pikachu', 'Mouse Pokémon', 'Thunder Jolt', '30', 'Fighting', 'Steel', '1', 58, 1, 4, 1),
(80, 'Ivysaur', 'Seed Pokémon', 'Razor Leaf', '30', 'Fire', '', '2', 30, 1, 1, 2),
(90, 'Charmeleon', 'Flame Pokémon', 'Flamethrower', '50', 'Water', '', '2', 24, 1, 2, 2),
(100, 'Blastoise', 'Shellfish Pokémon', 'Hydro Pump', '40+', 'Lightning', '', '3', 2, 1, 3, 3),
(120, 'Venusaur', 'Seed Pokémon', 'Solarbeam', '60', 'Fire', '', '3', 15, 1, 1, 3),

-- Jungle (collection_id = 2)
(70, 'Eevee', 'Evolution Pokémon', 'Quick Attack', '20+', 'Fighting', 'Psychic', '1', 55, 2, 7, 1),
(80, 'Scyther', 'Mantis Pokémon', 'Slash', '30', 'Fire', 'Fighting', '1', 10, 2, 1, 1),
(90, 'Snorlax', 'Sleeping Pokémon', 'Body Slam', '30', 'Fighting', 'Psychic', '4', 11, 2, 7, 1),
(100, 'Kangaskhan', 'Parent Pokémon', 'Comet Punch', '20x', 'Fighting', 'Psychic', '3', 5, 2, 7, 1),
(70, 'Jigglypuff', 'Balloon Pokémon', 'Lullaby', '—', 'Psychic', '', '1', 54, 2, 7, 1),
(80, 'Wigglytuff', 'Balloon Pokémon', 'Do the Wave', '10x', 'Psychic', '', '2', 32, 2, 7, 2),
(90, 'Nidoqueen', 'Drill Pokémon', 'Mega Punch', '40', 'Psychic', '', '3', 7, 2, 6, 2),

-- Fossil (collection_id = 3)
(90, 'Lapras', 'Transport Pokémon', 'Water Gun', '10+', 'Lightning', '', '2', 25, 3, 3, 1),
(100, 'Aerodactyl', 'Fossil Pokémon', 'Wing Attack', '30', 'Lightning', 'Fighting', '2', 1, 3, 7, 2),
(80, 'Kabuto', 'Shellfish Pokémon', 'Scratch', '20', 'Grass', '', '1', 9, 3, 6, 1),
(90, 'Kabutops', 'Shellfish Pokémon', 'Slash', '30', 'Grass', '', '2', 24, 3, 6, 2),
(100, 'Articuno', 'Freeze Pokémon', 'Blizzard', '50', 'Metal', '', '2', 2, 3, 3, 1);
