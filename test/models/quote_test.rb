require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  test "unique_tag" do 
      quote = Quote.create(:author => 'Cooper', :saying => 'Mankind was born on Earth. It was never meant to die here.')
      expected = 'C#' + quote.id.to_s
      actual = quote.unique_tag
      assert_equal expected, actual
  end
end
