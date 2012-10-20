# encoding: UTF-8
class EmployeeDataController < ApplicationController

  rescue_from Ole::Storage::FormatError, :with => :re_update
  rescue_from NoMethodError, :with => :re_update

  def new
    @employee_data = EmployeeData.new
  end

  def create
    EmployeeData.read params[:employee_data][:file].tempfile
    flash[:notice] = '数据导入成功'
    redirect_to employees_path
  end

  private

  def re_update
    flash[:error] = '请重新选择文件'
    redirect_to new_employee_data_path
  end
end
