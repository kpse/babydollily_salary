class Employee < ActiveRecord::Base
  attr_accessible :charge_area, :client_rank, :du, :dug, :duty, :name, :number, :post,
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

  def self.fetch_data data
    @employee = find_or_create_by_number data[0].to_i.to_s
    @employee.name =  data[1]
    @employee.dug =  data[2]
    @employee.du =  data[3]
    @employee.post =  data[4]
    @employee.duty =  data[5]
    @employee.charge_area =  data[6]
    @employee.client_rank =  data[7]

    @employee.wage ||= Wage.new
    @employee.wage.basic = data[8]
    @employee.wage.post = data[9]
    @employee.wage.compensation = data[10]
    @employee.wage.seniority_allowance = data[11]
    @employee.wage.communication_allowance = data[12]
    @employee.wage.accommodation_allowance = data[13]
    @employee.wage.transportation_allowance = data[14]
    @employee.wage.monthly_wages_standard = data[15]
    @employee.wage.travel_allowance = data[16]
    @employee.wage.monthly_total = data[17]

    @employee.bonus ||= Bonus.new
    @employee.bonus.project = data[18]
    @employee.bonus.granted_at = data[19]
    @employee.bonus.annual = data[20]
    @employee.bonus.sponsor = data[21]

    @employee.adjustment ||= Adjustment.new
    @employee.adjustment.jan = data[22]
    @employee.adjustment.feb = data[23]
    @employee.adjustment.mar = data[24]
    @employee.adjustment.apr = data[25]
    @employee.adjustment.may = data[26]
    @employee.adjustment.jun = data[27]
    @employee.adjustment.jul = data[28]
    @employee.adjustment.aug = data[29]
    @employee.adjustment.sep = data[30]
    @employee.adjustment.oct = data[31]
    @employee.adjustment.nov = data[32]
    @employee.adjustment.dec = data[33]

    @employee.save
  end

end
