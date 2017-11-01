json.extract! event, :id, :eventid, :clubid, :title, :location, :description, :startdate, :enddate, :created_at, :updated_at
json.url event_url(event, format: :json)
