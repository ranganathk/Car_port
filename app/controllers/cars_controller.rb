class CarsController < ApplicationController
  def index
  end

  def show
    require 'spreadsheet'
    file_name = File.join(Rails.root, 'app', 'assets', 'other', 'sample_sheet.xls')     
    book = Spreadsheet.open(file_name)
    sheet1 = book.worksheet('Orders') # can use an index or worksheet name
    # sheet1.each do |row|
    #   break if row[0].nil? # if first cell empty
    #   # puts row.join(',') # looks like it calls "to_s" on each cell's Value
    # end
    puts sheet1.count
  end

end


#@array = []
# file = File.join(Rails.root, 'app', 'assets', 'other', 'ranganath_resume')
# f = File.open(file, "r")
# f.each_line do |line|
#   @array << line  
# end
# f.close