json.experts do
  json.array! @experts do |expert|
    json.partial! "expert/expert", expert: expert, selected_service: @selected_service
  end
end
json.selected_service @selected_service
json.services do
  json.array! @services
end
