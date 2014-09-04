json.array!(@notifications) do |notification|
  json.extract! notification, :id, :user_id, :current_plant_id, :action, :changes
  json.url notification_url(notification, format: :json)
end
