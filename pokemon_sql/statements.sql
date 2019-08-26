SELECT name FROM pokemon.types;

SELECT name FROM pokemon.pokemons WHERE id = 45;

SELECT COUNT(*) FROM pokemon.pokemons;

SELECT COUNT(*) FROM pokemon.types;

SELECT COUNT(*) FROM pokemon.pokemons WHERE secondary_type IS NOT NULL;

SELECT pokemons.name, types.name FROM pokemon.pokemons INNER JOIN pokemon.types ON pokemons.primary_type=types.id;

//What is Rufflet's secondary type?
SELECT pokemons.name, pokemons.secondary_type FROM pokemon.pokemons INNER JOIN pokemon.types ON pokemons.secondary_type=types.id WHERE pokemons.name='Rufflet';

//What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT pokemon_trainer.trainerID, pokemons.name FROM pokemon_trainer INNER JOIN pokemons ON pokemon_trainer.pokemon_id=pokemons.id WHERE pokemon_trainer.trainerID=303;

//How many pokemon have a secondary type Poison
SELECT COUNT(*) FROM pokemons WHERE pokemons.secondary_type=7;

//What are all the primary types and how many pokemon have that type?
SELECT types.name, COUNT(*) type_count FROM types INNER JOIN pokemons ON types.id = pokemons.primary_type GROUP BY types.name;

//How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer
SELECT COUNT(pokelevel) FROM pokemon.pokemon_trainer WHERE pokelevel=100 GROUP BY trainerID;


//How many pokemon only belong to one trainer and no other?
