json.extract! sitelink, :id, :name, :url, :created_at, :updated_at
json.url sitelink_url(sitelink, format: :json)
