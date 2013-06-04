require 'test_helper'

class LoesControllerTest < ActionController::TestCase
  setup do
    @lo = loes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:loes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lo" do
    assert_difference('Loe.count') do
      post :create, lo: { customer: @lo.customer, name: @lo.name }
    end

    assert_redirected_to lo_path(assigns(:lo))
  end

  test "should show lo" do
    get :show, id: @lo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lo
    assert_response :success
  end

  test "should update lo" do
    put :update, id: @lo, lo: { customer: @lo.customer, name: @lo.name }
    assert_redirected_to lo_path(assigns(:lo))
  end

  test "should destroy lo" do
    assert_difference('Loe.count', -1) do
      delete :destroy, id: @lo
    end

    assert_redirected_to loes_path
  end
end
