require 'test_helper'

class IdeaBsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @idea_b = idea_bs(:one)
  end

  test "should get index" do
    get idea_bs_url
    assert_response :success
  end

  test "should get new" do
    get new_idea_b_url
    assert_response :success
  end

  test "should create idea_b" do
    assert_difference('IdeaB.count') do
      post idea_bs_url, params: { idea_b: {  } }
    end

    assert_redirected_to idea_b_url(IdeaB.last)
  end

  test "should show idea_b" do
    get idea_b_url(@idea_b)
    assert_response :success
  end

  test "should get edit" do
    get edit_idea_b_url(@idea_b)
    assert_response :success
  end

  test "should update idea_b" do
    patch idea_b_url(@idea_b), params: { idea_b: {  } }
    assert_redirected_to idea_b_url(@idea_b)
  end

  test "should destroy idea_b" do
    assert_difference('IdeaB.count', -1) do
      delete idea_b_url(@idea_b)
    end

    assert_redirected_to idea_bs_url
  end
end
