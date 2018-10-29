require 'rails_helper'

describe "Authors index (overview) page", type: :feature do

  it "should have a link to create a new author" do
  	visit authors_path
    expect(page).to have_link 'New Author', href: new_author_path
  end

  it "should have links to all authors pages" do
  	@alan = FactoryBot.create :author
  	visit authors_path
  	expect(page).to have_link 'Show', href: author_path(@alan)
  end

  it "should have a table" do
  	visit authors_path
  	expect(page).to have_table
  end

end