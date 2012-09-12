require 'spreadsheet'
class EmployeeData < ActiveRecord::Base
  attr_accessible :file

  def self.read file_io
    book = Spreadsheet.open file_io
    p book.worksheets
    sheet1 = book.worksheet 0
    sheet1.each do |row|
      # do something interesting with a row
      Employee.fetch_data row
    end

  end

end
