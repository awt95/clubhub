json.extract! event_member, :id, :eventid, :userid, :attended, :created_at, :updated_at
json.url event_member_url(event_member, format: :json)
