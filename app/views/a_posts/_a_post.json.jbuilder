json.extract! a_post, :id, :title, :description, :created_at, :updated_at
json.url a_post_url(a_post, format: :json)
