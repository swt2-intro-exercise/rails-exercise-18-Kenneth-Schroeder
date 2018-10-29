require 'rails_helper'

describe "Authors Model Tests", type: :model do #or :type => :model
  it "should have a first name, last name and homepage" do
  	@author = Author.new(first_name: 'Alan', last_name: 'Turing', homepage: 'aHomepage')
  	expect(@author.first_name).to eq('Alan')
  	expect(@author.last_name).to eq('Turing')
  	expect(@author.homepage).to eq('aHomepage')
  end

  it "should only be valid with a last name" do
  	@author = Author.new(first_name: 'Alan', last_name: '', homepage: 'aHomepage')
  	expect(@author).to_not be_valid
  end
end