require 'test_helper'

class EvaluativeIndicatorsControllerTest < ActionController::TestCase
  setup do
    @evaluative_indicator = evaluative_indicators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:evaluative_indicators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create evaluative_indicator" do
    assert_difference('EvaluativeIndicator.count') do
      post :create, evaluative_indicator: { description: @evaluative_indicator.description, name: @evaluative_indicator.name }
    end

    assert_redirected_to evaluative_indicator_path(assigns(:evaluative_indicator))
  end

  test "should show evaluative_indicator" do
    get :show, id: @evaluative_indicator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @evaluative_indicator
    assert_response :success
  end

  test "should update evaluative_indicator" do
    patch :update, id: @evaluative_indicator, evaluative_indicator: { description: @evaluative_indicator.description, name: @evaluative_indicator.name }
    assert_redirected_to evaluative_indicator_path(assigns(:evaluative_indicator))
  end

  test "should destroy evaluative_indicator" do
    assert_difference('EvaluativeIndicator.count', -1) do
      delete :destroy, id: @evaluative_indicator
    end

    assert_redirected_to evaluative_indicators_path
  end
end
