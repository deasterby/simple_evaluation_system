require 'test_helper'

class SubDomainsControllerTest < ActionController::TestCase
  setup do
    @sub_domain = sub_domains(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sub_domains)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sub_domain" do
    assert_difference('SubDomain.count') do
      post :create, sub_domain: { domain: @sub_domain.domain, name: @sub_domain.name }
    end

    assert_redirected_to sub_domain_path(assigns(:sub_domain))
  end

  test "should show sub_domain" do
    get :show, id: @sub_domain
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sub_domain
    assert_response :success
  end

  test "should update sub_domain" do
    patch :update, id: @sub_domain, sub_domain: { domain: @sub_domain.domain, name: @sub_domain.name }
    assert_redirected_to sub_domain_path(assigns(:sub_domain))
  end

  test "should destroy sub_domain" do
    assert_difference('SubDomain.count', -1) do
      delete :destroy, id: @sub_domain
    end

    assert_redirected_to sub_domains_path
  end
end
