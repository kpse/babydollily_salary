require 'test_helper'

class WagesControllerTest < ActionController::TestCase
  setup do
    @wage = wages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wage" do
    assert_difference('Wage.count') do
      post :create, wage: { accommodation_allowance: @wage.accommodation_allowance, basic: @wage.basic, communication_allowance: @wage.communication_allowance, compensation: @wage.compensation, employee_id: @wage.employee_id, monthly_total: @wage.monthly_total, monthly_wages_standard: @wage.monthly_wages_standard, post: @wage.post, seniority_allowance: @wage.seniority_allowance, transportation_allowance: @wage.transportation_allowance, travel_allowance: @wage.travel_allowance }
    end

    assert_redirected_to wage_path(assigns(:wage))
  end

  test "should show wage" do
    get :show, id: @wage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wage
    assert_response :success
  end

  test "should update wage" do
    put :update, id: @wage, wage: { accommodation_allowance: @wage.accommodation_allowance, basic: @wage.basic, communication_allowance: @wage.communication_allowance, compensation: @wage.compensation, employee_id: @wage.employee_id, monthly_total: @wage.monthly_total, monthly_wages_standard: @wage.monthly_wages_standard, post: @wage.post, seniority_allowance: @wage.seniority_allowance, transportation_allowance: @wage.transportation_allowance, travel_allowance: @wage.travel_allowance }
    assert_redirected_to wage_path(assigns(:wage))
  end

  test "should destroy wage" do
    assert_difference('Wage.count', -1) do
      delete :destroy, id: @wage
    end

    assert_redirected_to wages_path
  end
end
