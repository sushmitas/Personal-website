class PagesController < ApplicationController
  def home
  	@title = "Home"
	@menuselect = "Home"
  end

  def resume
  	@title = "Resume"
  	@menuselect = "Resume"
  end
  
  def about
  	@title = "About"
  	@menuselect = "About"
	end

end
