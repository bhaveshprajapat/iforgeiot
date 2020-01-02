json.extract! machine, :id, :machine_name, :machine_type_id, :out_of_order, :created_at, :updated_at
json.url machine_url(machine, format: :json)
