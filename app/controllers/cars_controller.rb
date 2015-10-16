class CarsController < ApplicationController
  def index
  end

  def show
    @array = []
    file = File.join(Rails.root, 'app', 'assets', 'other', 'ranganath_resume')
    f = File.open(file, "r")
    f.each_line do |line|
      @array << line  
    end
    f.close
  end

end
