json.comments do
  json.array! @comments.each do |comment|
    json.author comment.author
    json.content comment.content
  end
end
