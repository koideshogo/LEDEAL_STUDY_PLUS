json.array! @child_categories.each do |child|
  json.id child.id
  json.category_id child.category_id
  json.name child.name
end