json.array!(@info_pages) do |info_page|
  json.extract! info_page, :id, :information
  json.url info_page_url(info_page, format: :json)
end
