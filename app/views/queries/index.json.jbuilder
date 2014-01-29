json.array!(@queries) do |query|
  json.extract! query, :id, :question, :answer
  json.url query_url(query, format: :json)
end
