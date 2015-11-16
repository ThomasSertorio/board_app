json.extract! expert, :name, :tagline, :avatar_url, :description, :id
json.services do
  json.array! expert.services
end
expert.services.each do |service|
  if (service.name == selected_service)
    json.selected_service do
      json.name service.name
      json.description service.description
      json.cost service.cost
    end
  end
end
