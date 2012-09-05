class Adjustment < ActiveRecord::Base
  attr_accessible :apr, :aug, :dec, :employee_id, :feb, :jan, :jul, :jun, :mar, :may, :nov, :oct, :sep
  belongs_to :employee
end
