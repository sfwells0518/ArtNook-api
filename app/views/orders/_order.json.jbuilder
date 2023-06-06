json.id order.id
json.subtotal order.subtotal
json.tax order.tax
json.total order.total
json.created_at order.created_at
json.updated_at order.updated_at
json.user_id order.user_id
json.carted_paintings order.carted_paintings.map do |carted_painting|
  json.id carted_painting.id
  json.quantity carted_painting.quantity
  json.status carted_painting.status
  json.painting carted_painting.painting
end
