json.array!(@reviews) do |review|
  json.extract! review, :id, :rating, :description, :checkintime, :waittime, :restaurant_id
  json.url review_url(review, format: :json)
end
