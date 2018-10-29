require 'rails_helper'

describe "Authors Model Tests", :type => :model do
  it "should be valid" do
  	author = Author.new(first_name: 'aFirstName', last_name: 'aLastName', homepage: 'aHomepage')
  	expect(author.first_name).to eq('aFirstName')
  	expect(author.last_name).to eq('aLastName')
  	expect(author.homepage).to eq('aHomepage')
  end
end