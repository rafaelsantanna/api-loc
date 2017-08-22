# Checklist

Fazer o front consumir a lista de Counters

Condição para pegar o nome do Counters 

SELECT name
FROM countersheroes AS ch
JOIN counters AS c ON ch.id = c.countersheroes_id
WHERE c.heroes_id = 1

Explicação Join