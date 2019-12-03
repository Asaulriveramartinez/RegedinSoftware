json.extract! incidentmanagement, :id, :user_id, :incident_id, :description, :state, :created_at, :updated_at
json.url incidentmanagement_url(incidentmanagement, format: :json)
