require 'test_helper'

class IndicatorAverageDefinitionsControllerTest < ActionController::TestCase
  setup do
    @indicator_average_defintion = indicator_average_defintions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:indicator_average_definitions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create indicator_average_defintion" do
    assert_difference('IndicatorAverageDefinition.count') do
      post :create, indicator_average_defintion: { calculation: @indicator_average_defintion.calculation, name: @indicator_average_defintion.name }
    end

    assert_redirected_to indicator_average_defintion_path(assigns(:indicator_average_defintion))
  end

  test "should show indicator_average_defintion" do
    get :show, id: @indicator_average_defintion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @indicator_average_defintion
    assert_response :success
  end

  test "should update indicator_average_defintion" do
    patch :update, id: @indicator_average_defintion, indicator_average_defintion: { calculation: @indicator_average_defintion.calculation, name: @indicator_average_defintion.name }
    assert_redirected_to indicator_average_defintion_path(assigns(:indicator_average_defintion))
  end

  test "should destroy indicator_average_defintion" do
    assert_difference('IndicatorAverageDefinition.count', -1) do
      delete :destroy, id: @indicator_average_defintion
    end

    assert_redirected_to indicator_average_defintions_path
  end
end
