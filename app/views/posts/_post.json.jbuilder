json.extract! post, :id, :title, :description, :issue_type, :priority, :status, :created_at, :updated_at
json.url post_url(post, format: :json)
