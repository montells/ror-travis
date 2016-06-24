json.array!(@kids) do |kid|
  json.extract! kid, :id, :name, :start, :end
  json.url kid_url(kid, format: :json)
end
