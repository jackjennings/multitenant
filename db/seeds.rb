Buyer.find_or_create_by slug: 'tenant' do |b|
  b.first_name = "Some"
  b.last_name = "Guy"
  b.email = "foo@bar.com"
end

Unit.find_or_create_by number: 1 do |u|
  u.price = 100000.0
end
