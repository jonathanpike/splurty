require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  test "unique_tag" do 
      quote = FactoryGirl.create(:quote)
      expected = 'C#' + quote.id.to_s
      actual = quote.unique_tag
      assert_equal expected, actual
  end

  test "quote validates" do
      quote = FactoryGirl.create(:quote)
      assert quote.valid?
  end
  
  test "invalid quote doesn't validate" do
    quote = FactoryGirl.build(:quote, author: "")
    assert_not quote.valid?
  end
end
