json.array!(@blogs) do |blog|
  json.extract! blog, :id, :title, :content, :pic_filename, :pic_content_type, :pic_file_size, :pic_updated_at
  json.url blog_url(blog, format: :json)
end
