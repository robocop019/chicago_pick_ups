# # Comment.create!([
#   {user_id: 1, commentable_id: 4, commentable_type: "Game", content: "Goose!!!", rating: 2, hidden: false},
#   {user_id: 4, commentable_id: 3, commentable_type: "Game", content: "Shoot IT!!!!", rating: 4, hidden: false},
#   {user_id: 2, commentable_id: 2, commentable_type: "Park", content: "The Madhouse!!", rating: 5, hidden: false},
#   {user_id: 3, commentable_id: 3, commentable_type: "Park", content: "Soldier Field is cold in the winter", rating: 4, hidden: false}
# ])
# Game.create!([
#   {park_id: 45, title: "Hockey Game", description: "Come play hockey with nhl players", sport: "hockey", category: "casual", start_time: "2019-06-26 20:39:35", min_participants: nil, max_participants: 15, max_age: nil, organizer_id: 2},
#   {park_id: 30, title: "Football", description: "football game at a park", sport: "football", category: "competitive", start_time: "2019-06-28 22:39:35", min_participants: nil, max_participants: nil, max_age: nil, organizer_id: 4},
#   {park_id: 90, title: "Basketball Practice", description: "Shoot some hoops", sport: "basketball", category: "practice", start_time: "2019-06-29 20:39:35", min_participants: nil, max_participants: 5, max_age: nil, organizer_id: 5},
#   {park_id: 10, title: "Beach Volleyball", description: "Top Gun style", sport: "volleyball", category: "competitive", start_time: "2019-06-24 20:39:35", min_participants: nil, max_participants: 4, max_age: nil, organizer_id: 6}
# ])
# Park.create!([
#   {api_ref: 500, name: "United Center", location: "Madison St"},
#   {api_ref: 45, name: "United Center", location: "West Madison St"},
#   {api_ref: 30, name: "Soldier Field", location: "Mueseum Campus"},
#   {api_ref: 90, name: "Lincoln Park", location: "Lincoln Park"},
#   {api_ref: 10, name: "North Ave Beach", location: "North Ave"}
# ])
# User.create!([
#   {first_name: "Chris", last_name: "Bowen", email: "chrisbowen@comcast.net", password_digest: "$2a$12$e7wW09AbftJ0QgEWQIa01OQgHbLpbDgLv5UUz//Qpr6Jzo911DbQu", bio: "From Chicago.", avatar_url: "https://s3.amazonaws.com/bncore/wp-content/uploads/2019/05/Godzilla-King-Monsters-featured-1.jpg", date_of_birth: "1991-11-22", location: "Chicago, IL", admin: true, phone_number: "8472711922"},
#   {first_name: "Jonathon", last_name: "Toews", email: "jt19@gmail.com", password_digest: "$2a$12$FEeaNlbHg2qBU9V2aWZ.JOXkTjbV3.dhNVZezVGZzIsd368Tw/ilK", bio: "Hockey player from Winnipeg.", avatar_url: nil, date_of_birth: "1988-07-02", location: "Lakeview", admin: false, phone_number: "3125556778"},
#   {first_name: "Paul", last_name: "Konerko", email: "paulie@gmail.com", password_digest: "$2a$12$xtpIayuMitsmgQebt95DmOdWFOdV4NTgfyIfu9NJiu.V4h8zoBsLm", bio: "World Series Champion.", avatar_url: nil, date_of_birth: "1978-04-05", location: "Arizona", admin: false, phone_number: "7735553456"},
#   {first_name: "Khalil", last_name: "Mack", email: "kmack@aol.com", password_digest: "$2a$12$0SPeZ6l.RGpOSgRQh9BHp.KG.f2BGSQWmcA9lCo4CU5N9siwqbFUe", bio: "Da Bears.", avatar_url: nil, date_of_birth: "1988-09-01", location: "Chicago, IL", admin: false, phone_number: "3125551234"},
#   {first_name: "Jose", last_name: "Abreu", email: "ja79@yahoo.com", password_digest: "$2a$12$oOIuNTDPgeFGfFSmo2DC7up1oQ6X3IXXM//XcEhHwxlGEHh0HUAEa", bio: "Southside Hitmen", avatar_url: nil, date_of_birth: "1986-03-22", location: "Comiskey", admin: false, phone_number: "3125555432"},
#   {first_name: "Patrick", last_name: "Kane", email: "kaner88@gmail.com", password_digest: "$2a$12$wMWR44gis6IKPb67LV6gEOsdxEvfqOD0rXrK99nLIvMCI8mM2g58W", bio: "Hawks", avatar_url: nil, date_of_birth: "1988-11-20", location: "Chicago, IL", admin: false, phone_number: "31255557634"}
# ])
# #