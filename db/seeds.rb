Buyer.find_or_create_by slug: 'tenant' do |b|
  b.first_name = "Some"
  b.last_name = "Guy"
  b.email = "foo@bar.com"
end
