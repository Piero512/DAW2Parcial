json.extract! comment, :id, :title, :content, :author, :member_id, :post_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
