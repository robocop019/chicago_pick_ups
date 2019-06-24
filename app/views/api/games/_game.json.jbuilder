json.id game.id
json.title game.title
json.description game.description
json.organizer_id game.organizer_id
json.park_id game.park_id
json.start_time game.start_time
json.sport game.sport
json.category game.category
json.min_participants game.min_participants
json.max_participants game.max_participants
json.max_age game.max_age
json.created_at game.created_at
json.updated_at game.updated_at

json.park do
  json.partial! game.park, partial: 'api/parks/park', as: :park
end


