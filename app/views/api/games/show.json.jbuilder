json.partial! @game, partial: 'game', as: :game

json.organizer do
  json.partial! @game.organizer, partial: 'api/users/user', as: :user
end

json.comments do
  json.array! @game.comments, partial: 'api/comments/comment', as: :comment
end