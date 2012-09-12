# encoding: UTF-8
class EmployeeDataController < ApplicationController
  def new
    @employee_data = EmployeeData.new
  end

  def create
    p params
    EmployeeData.read params[:employee_data][:file].tempfile
    flash[:notice] = '数据导入成功'
    redirect_to employees_path
  end
end
