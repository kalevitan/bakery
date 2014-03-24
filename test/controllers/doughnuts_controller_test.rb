require 'test_helper'

class DoughnutsControllerTest < ActionController::TestCase
  setup do
    @doughnut = doughnuts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doughnuts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doughnut" do
    assert_difference('Doughnut.count') do
      post :create, doughnut: { eggs: @doughnut.eggs, filling: @doughnut.filling, name: @doughnut.name, salt: @doughnut.salt, sugar: @doughnut.sugar, water: @doughnut.water, yeast: @doughnut.yeast }
    end

    assert_redirected_to doughnut_path(assigns(:doughnut))
  end

  test "should show doughnut" do
    get :show, id: @doughnut
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doughnut
    assert_response :success
  end

  test "should update doughnut" do
    patch :update, id: @doughnut, doughnut: { eggs: @doughnut.eggs, filling: @doughnut.filling, name: @doughnut.name, salt: @doughnut.salt, sugar: @doughnut.sugar, water: @doughnut.water, yeast: @doughnut.yeast }
    assert_redirected_to doughnut_path(assigns(:doughnut))
  end

  test "should destroy doughnut" do
    assert_difference('Doughnut.count', -1) do
      delete :destroy, id: @doughnut
    end

    assert_redirected_to doughnuts_path
  end
end
