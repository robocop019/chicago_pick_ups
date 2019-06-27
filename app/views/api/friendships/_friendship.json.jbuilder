json.id friendship.id
json.friender_id friendship.friender_id
json.friender_first_name User.find(friendship.friender_id).first_name
json.friender_last_name User.find(friendship.friender_id).last_name
json.friendee_id friendship.friendee_id
json.friendee_first_name User.find(friendship.friendee_id).first_name
json.friendee_last_name User.find(friendship.friendee_id).last_name
