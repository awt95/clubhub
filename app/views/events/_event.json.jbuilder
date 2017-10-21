json.extract! event, :id, :eventid, :clubid, :startdate, :enddate, :created_at, :updated_at
json.url event_url(event, format: :json)
