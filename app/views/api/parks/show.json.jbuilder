json.partial! @park, partial: 'park', as: :park

json.games do
  json.array! @park.games, partial: 'api/games/game', as: :game
end

json.comments do
  json.array! @park.comments, partial: 'api/comments/comment', as: :comment
end