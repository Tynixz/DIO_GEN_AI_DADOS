-- Additional 30 Pokémon cards

INSERT INTO tbl_cards (hp, name, info, attack, damage, weak, resis, retreat,
    cardNumberInCollection, collection_id, type_id, stage_id)
VALUES
-- Base Set (collection_id = 1)
(60, 'Gastly', 'Gas Pokémon', 'Lick', '10', 'Psychic', '', '1', 33, 1, 5, 1),
(70, 'Haunter', 'Gas Pokémon', 'Nightmare', '10', 'Psychic', '', '1', 29, 1, 5, 2),
(100, 'Gengar', 'Shadow Pokémon', 'Dark Mind', '30', 'Psychic', '', '2', 5, 1, 5, 3),
(90, 'Machop', 'Superpower Pokémon', 'Low Kick', '20', 'Psychic', '', '1', 52, 1, 6, 1),
(100, 'Machoke', 'Superpower Pokémon', 'Karate Chop', '50', 'Psychic', '', '2', 34, 1, 6, 2),
(120, 'Machamp', 'Superpower Pokémon', 'Seismic Toss', '60', 'Psychic', '', '3', 8, 1, 6, 3),
(70, 'Abra', 'Psi Pokémon', 'Psyshock', '10', 'Psychic', '', '1', 43, 1, 5, 1),
(80, 'Kadabra', 'Psi Pokémon', 'Recover', '—', 'Psychic', '', '2', 32, 1, 5, 2),
(100, 'Alakazam', 'Psi Pokémon', 'Confuse Ray', '30', 'Psychic', '', '3', 1, 1, 5, 3),
(90, 'Hitmonchan', 'Punching Pokémon', 'Special Punch', '40', 'Psychic', '', '2', 7, 1, 6, 1),

-- Jungle (collection_id = 2)
(60, 'Oddish', 'Weed Pokémon', 'Stun Spore', '10', 'Fire', '', '1', 58, 2, 1, 1),
(80, 'Gloom', 'Weed Pokémon', 'Poisonpowder', '20', 'Fire', '', '2', 36, 2, 1, 2),
(100, 'Vileplume', 'Flower Pokémon', 'Petal Dance', '40x', 'Fire', '', '2', 13, 2, 1, 3),
(70, 'Meowth', 'Scratch Cat Pokémon', 'Pay Day', '10', 'Fighting', '', '1', 56, 2, 7, 1),
(90, 'Persian', 'Classy Cat Pokémon', 'Scratch', '20', 'Fighting', '', '1', 42, 2, 7, 2),
(100, 'Clefable', 'Fairy Pokémon', 'Metronome', '—', 'Fighting', '', '2', 1, 2, 7, 2),
(60, 'Paras', 'Mushroom Pokémon', 'Scratch', '20', 'Fire', '', '1', 57, 2, 1, 1),
(80, 'Parasect', 'Mushroom Pokémon', 'Spore', '—', 'Fire', '', '2', 35, 2, 1, 2),
(90, 'Pinsir', 'Stag Beetle Pokémon', 'Guillotine', '50', 'Fire', '', '2', 9, 2, 1, 1),
(100, 'Electrode', 'Ball Pokémon', 'Explosion', '—', 'Fighting', '', '2', 2, 2, 4, 2),

-- Fossil (collection_id = 3)
(60, 'Zubat', 'Bat Pokémon', 'Leech Life', '10', 'Psychic', '', '1', 57, 3, 6, 1),
(80, 'Golbat', 'Bat Pokémon', 'Wing Attack', '30', 'Psychic', '', '1', 33, 3, 6, 2),
(100, 'Muk', 'Sludge Pokémon', 'Sludge', '30', 'Psychic', '', '2', 13, 3, 5, 2),
(90, 'Grimer', 'Sludge Pokémon', 'Poison Gas', '10', 'Psychic', '', '1', 48, 3, 5, 1),
(120, 'Ditto', 'Transform Pokémon', 'Transform', '—', 'Fighting', '', '1', 3, 3, 7, 1),
(100, 'Moltres', 'Flame Pokémon', 'Wildfire', '30', 'Water', '', '2', 12, 3, 2, 1),
(100, 'Zapdos', 'Electric Pokémon', 'Thunderstorm', '40', 'Fighting', '', '2', 15, 3, 4, 1),
(100, 'Dragonite', 'Dragon Pokémon', 'Slam', '40x', 'Colorless', '', '2', 4, 3, 7, 3),
(90, 'Omanyte', 'Spiral Pokémon', 'Water Gun', '10+', 'Grass', '', '1', 52, 3, 3, 1),
(100, 'Omastar', 'Spiral Pokémon', 'Hydro Pump', '30+', 'Grass', '', '2', 26, 3, 3, 2);
