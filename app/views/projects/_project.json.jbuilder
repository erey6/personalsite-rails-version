json.extract! project, :id, :title, :description, :tech, :links, :picurl, :created_at, :updated_at
json.url project_url(project, format: :json)
