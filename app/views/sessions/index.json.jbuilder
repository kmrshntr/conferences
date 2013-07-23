json.array!(@sessions) do |session|
  json.extract! session, :title, :start_at, :time_in_minutes, :abstract
  json.url session_url(session, format: :json)
end