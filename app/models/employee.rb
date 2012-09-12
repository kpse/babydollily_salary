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
    @employee.name = data[1] if data[1].present?
    @employee.name ||= @employee.number
    @employee.dug = data[2] if data[2].present?
    @employee.du = data[3] if data[3].present?
    @employee.post = data[4] if data[4].present?
    @employee.duty = data[5] if data[5].present?
    @employee.charge_area = data[6] if data[6].present?
    @employee.client_rank = data[7] if data[7].present?

    @employee.wage ||= Wage.new
    @employee.wage.basic = data[8] if data[8].present?
    @employee.wage.post = data[9] if data[9].present?
    @employee.wage.compensation = data[10] if data[10].present?
    @employee.wage.seniority_allowance = data[11] if data[11].present?
    @employee.wage.communication_allowance = data[12] if data[12].present?
    @employee.wage.accommodation_allowance = data[13] if data[13].present?
    @employee.wage.transportation_allowance = data[14] if data[14].present?
    @employee.wage.monthly_wages_standard = data[15] if data[15].present?
    @employee.wage.travel_allowance = data[16] if data[16].present?
    @employee.wage.monthly_total = data[17] if data[17].present?

    @employee.bonus ||= Bonus.new
    @employee.bonus.project = data[18] if data[18].present?
    @employee.bonus.granted_at = data[19] if data[19].present?
    @employee.bonus.annual = data[20] if data[20].present?
    @employee.bonus.sponsor = data[21] if data[21].present?

    @employee.adjustment ||= Adjustment.new
    @employee.adjustment.jan = data[22] if data[22].present?
    @employee.adjustment.feb = data[23] if data[23].present?
    @employee.adjustment.mar = data[24] if data[24].present?
    @employee.adjustment.apr = data[25] if data[25].present?
    @employee.adjustment.may = data[26] if data[26].present?
    @employee.adjustment.jun = data[27] if data[27].present?
    @employee.adjustment.jul = data[28] if data[28].present?
    @employee.adjustment.aug = data[29] if data[29].present?
    @employee.adjustment.sep = data[30] if data[30].present?
    @employee.adjustment.oct = data[31] if data[31].present?
    @employee.adjustment.nov = data[32] if data[32].present?
    @employee.adjustment.dec = data[33] if data[33].present?

    @employee.save
  end

end
