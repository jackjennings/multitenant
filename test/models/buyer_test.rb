require 'test_helper'

class BuyerTest < ActiveSupport::TestCase

  test "gets from param by slug" do
    Buyer.create(slug: 'foo')
    buyer = Buyer.from_param('foo')
    assert_not_nil buyer
  end

end
