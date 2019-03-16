# What are all the types of pokemon that a pokemon can have?
USE pokemon;
SELECT name
FROM types;
Normal
Water
Grass
Rock
Fire
Ground
Poison
Bug
Electric
Dragon
Steel
Dark
Fighting
Psychic
Ghost
Fairy
Ice
Flying


# What is the name of the pokemon with id 45?
USE pokemon;
SELECT id, name
FROM pokemons
WHERE id = 45;
# Eevee

# How many pokemon are there?
USE pokemon;
SELECT COUNT(*) as "count"
FROM pokemons;
# 656

# How many types are there?
USE pokemon;
SELECT COUNT(*) as "count"
FROM types;
# 18

# How many pokemon have a secondary type?
USE pokemon;
SELECT COUNT(*) secondary_type
FROM pokemons
WHERE secondary_type IS NOT NULL;
# 316

# What is each pokemon's primary type?
USE pokemon;
SELECT p.name, t.name
FROM pokemons p
JOIN types t
ON p.primary_type = t.id;
Smeargle    Normal
Wailord    Water
Vileplume    Grass
Armaldo    Rock
Cradily    Rock
Carvanha    Water
Numel    Fire
Sandslash    Ground
Ninetales    Fire
Weepinbell    Grass
Gloom    Grass
Ivysaur    Grass
Nidorino    Poison
Nidoking    Poison
Dugtrio    Ground
#...etc

# What is Rufflet's secondary type?
USE pokemon;
SELECT p.name, t.name
FROM pokemons p
JOIN types t
ON p.secondary_type = t.id
WHERE p.name = "Rufflet";
# Rufflet    Flying

# What are the names of the pokemon that belong to the trainer with trainerID 303?
USE pokemon;
SELECT t.trainerID, p.name
FROM pokemon_trainer t
JOIN pokemons p
ON t.pokemon_id = p.id
WHERE trainerID = 303;
# 303    Wailord
# 303    Vileplume

# How many pokemon have a secondary type Poison
USE pokemon;
SELECT COUNT(*) as "count"
FROM pokemons
WHERE secondary_type in (SELECT id
  FROM types
  WHERE name = 'Poison');
# 31

# What are all the primary types and how many pokemon have that type?


