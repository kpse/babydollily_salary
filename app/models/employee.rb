class Employee < ActiveRecord::Base
  attr_accessible :charge_area, :client_rank, :du, :dug, :duty, :line_of_business, :name, :number, :post
  has_one :wage
  has_one :bonus
  has_one :adjustment
end
