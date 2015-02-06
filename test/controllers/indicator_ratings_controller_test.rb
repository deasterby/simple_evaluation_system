require 'test_helper'

class IndicatorRatingsControllerTest < ActionController::TestCase
  setup do
    @indicator_rating = indicator_ratings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:indicator_ratings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create indicator_rating" do
    assert_difference('IndicatorRating.count') do
      post :create, indicator_rating: {  }
    end

    assert_redirected_to indicator_rating_path(assigns(:indicator_rating))
  end

  test "should show indicator_rating" do
    get :show, id: @indicator_rating
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @indicator_rating
    assert_response :success
  end

  test "should update indicator_rating" do
    patch :update, id: @indicator_rating, indicator_rating: {  }
    assert_redirected_to indicator_rating_path(assigns(:indicator_rating))
  end

  test "should destroy indicator_rating" do
    assert_difference('IndicatorRating.count', -1) do
      delete :destroy, id: @indicator_rating
    end

    assert_redirected_to indicator_ratings_path
  end
end
