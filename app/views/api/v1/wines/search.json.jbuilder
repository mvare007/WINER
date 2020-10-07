if @wines.count > 1
  json.array! @wines do |wine|
    json.extract! wine,
      :id,
      :name,
      :description,
      :image_url,
      :variant,
      :origin,
      :region,
      :grade,
      :maker
  end

elsif @wines.count == 0
  @wines = {}

else
  json.extract! @wines,
      :id,
      :name,
      :description,
      :image_url,
      :variant,
      :origin,
      :region,
      :grade,
      :maker
end
