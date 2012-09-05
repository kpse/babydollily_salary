class Employee < ActiveRecord::Base
  attr_accessible :charge_area, :client_rank, :du, :dug, :duty, :line_of_business, :name, :number, :post,
                  :wage_attributes, :adjustment_attributes, :bonus_attributes
  attr_readonly :full_name
  has_one :wage, :dependent => :destroy
  has_one :bonus, :dependent => :destroy
  has_one :adjustment, :dependent => :destroy
  accepts_nested_attributes_for :wage, :bonus, :adjustment

  validates_presence_of :number, :name
  validates_uniqueness_of :number

  def full_name
    "#{name}(#{number})"
  end

end
