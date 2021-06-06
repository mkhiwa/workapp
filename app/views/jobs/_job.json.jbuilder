json.extract! job, :id, :consultant_id, :client_id, :location, :start_time, :end_time, :material, :cost, :notes, :created_at, :updated_at
json.url job_url(job, format: :json)
