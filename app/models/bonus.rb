class Bonus < ActiveRecord::Base
  attr_accessible :annual, :employee_id, :granted_at, :project, :sponsor
end
