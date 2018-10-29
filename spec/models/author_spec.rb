require 'rails_helper'

describe "Authors Model Tests", :type => :model do
  it "should be valid" do
  	author = Author.new(first_name: 'Alan', last_name: 'Turing', homepage: 'aHomepage')
  	expect(author.first_name).to eq('Alan')
  	expect(author.last_name).to eq('Turing')
  	expect(author.homepage).to eq('aHomepage')
  end
end