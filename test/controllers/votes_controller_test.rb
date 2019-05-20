require 'test_helper'

class VotesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get votes_create_url
    assert_response :success
  end

  test "should get positive_vote" do
    get votes_positive_vote_url
    assert_response :success
  end

  test "should get negative_vote" do
    get votes_negative_vote_url
    assert_response :success
  end

end
