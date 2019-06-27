json.partial! @game, partial: 'game', as: :game

json.organizer do
  json.partial! @game.organizer, partial: 'api/users/user', as: :user
end