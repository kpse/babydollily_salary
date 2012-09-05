class Wage < ActiveRecord::Base
  attr_accessible :accommodation_allowance, :basic, :communication_allowance, :compensation, :employee_id, :monthly_total, :monthly_wages_standard, :post, :seniority_allowance, :transportation_allowance, :travel_allowance
end
