module BonusesHelper
  def time_output time
    time.blank? ? "N/A" : time.to_date
  end
end
