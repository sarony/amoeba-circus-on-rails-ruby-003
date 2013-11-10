json.array!(@performers) do |performer|
  json.extract! performer, :name, :talent, :generation_number
  json.url performer_url(performer, format: :json)
end
