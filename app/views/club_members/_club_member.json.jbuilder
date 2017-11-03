json.extract! club_member, :id, :ClubId, :UserId, :IsAdmin, :created_at, :updated_at
json.url club_member_url(club_member, format: :json)
