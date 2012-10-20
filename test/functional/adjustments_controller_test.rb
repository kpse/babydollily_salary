require 'test_helper'

class AdjustmentsControllerTest < ActionController::TestCase
  setup do
    @adjustment = adjustments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adjustments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adjustment" do
    assert_difference('Adjustment.count') do
      post :create, adjustment: { apr: @adjustment.apr, aug: @adjustment.aug, dec: @adjustment.dec, employee_id: @adjustment.employee_id, feb: @adjustment.feb, jan: @adjustment.jan, jul: @adjustment.jul, jun: @adjustment.jun, mar: @adjustment.mar, may: @adjustment.may, nov: @adjustment.nov, oct: @adjustment.oct, sep: @adjustment.sep }
    end

    assert_redirected_to adjustment_path(assigns(:adjustment))
  end

  test "should show adjustment" do
    get :show, id: @adjustment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adjustment
    assert_response :success
  end

  test "should update adjustment" do
    put :update, id: @adjustment, adjustment: { apr: @adjustment.apr, aug: @adjustment.aug, dec: @adjustment.dec, employee_id: @adjustment.employee_id, feb: @adjustment.feb, jan: @adjustment.jan, jul: @adjustment.jul, jun: @adjustment.jun, mar: @adjustment.mar, may: @adjustment.may, nov: @adjustment.nov, oct: @adjustment.oct, sep: @adjustment.sep }
    assert_redirected_to adjustment_path(assigns(:adjustment))
  end

  test "should destroy adjustment" do
    assert_difference('Adjustment.count', -1) do
      delete :destroy, id: @adjustment
    end

    assert_redirected_to adjustments_path
  end
end
