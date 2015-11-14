json.extract! expert, :name, :tagline, :avatar_url, :description
json.services do
  json.array! expert.services, :name, :description, :cost
end
