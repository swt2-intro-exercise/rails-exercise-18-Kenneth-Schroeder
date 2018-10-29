require 'rails_helper'

describe "Authors index (overview) page", type: :feature do

  it "should display all authors from the database" do
  	visit authors_path
    expect(page).to have_link 'New', href: new_author_path
  end

end