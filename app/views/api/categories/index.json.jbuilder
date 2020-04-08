json.array! @categories do |category|
  json.extract! category, :id, :name, :ancestry, :image
end
