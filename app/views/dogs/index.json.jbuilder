json.array!(@dogs) do |dog|
  json.extract! dog, :id, :name, :age, :description
  json.url dog_url(dog, format: :json)
end
