class AuthorsController < ApplicationController
  def new
  	
  end

  def create
    @author = Author.new(authors_params)
 
  	if @author.save
  		#redirect_to @author
  	else
  		render 'new'
  	end 
  end

  private 
  	def authors_params
  		params.require(:author).permit(:first_name, :last_name, :homepage)
  	end

end