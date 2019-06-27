json.partial! @park, partial: 'park', as: :park

json.games do
  json.array! @park.games, partial: 'api/games/game', as: :game
end