json.array!(@conferences) do |conference|
  json.extract! conference, :title, :date, :place
  json.url conference_url(conference, format: :json)
end