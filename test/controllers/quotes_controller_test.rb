require 'test_helper'

class QuotesControllerTest < ActionController::TestCase
  test "quote show page" do
   quote = FactoryGirl.create(:quote)
   get :show, :id => quote.id
   assert_response :success
  end

  test "quote show page, not found" do
    get :show, :id => 'OMG'
    assert_response :not_found
  end

  test "quote about page" do
    get :about
    assert_response :success
  end
  
  test "create valid quotee" do
    assert_difference('Quote.count') do
        post :create, :quote => { :author => "Cooper", :saying => "No time for caution" }
    end
    
    assert_redirected_to root_path
  end
end
