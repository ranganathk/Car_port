class CarsController < ApplicationController
  def index
  end

  def show
    file = File.join(Rails.root, 'app', 'assets', 'other', 'ranganath_resume.pdf')
    f = File.open(file, "r")
    f.each_line do |line|
      puts line
    end
    f.close

  end
end
