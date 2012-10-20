module BonusesHelper
  def date_output time
    time.blank? ? "N/A" : time.to_date
  end

  def date_export time
    date_output(time).to_s
  end
end
