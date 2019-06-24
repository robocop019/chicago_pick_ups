json.partial! @user, partial: 'user', as: :user

json.games do
  json.array! @user.games, partial: 'api/games/game', as: :game
end