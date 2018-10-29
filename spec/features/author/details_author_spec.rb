require 'rails_helper'

describe "Authors details page", type: :feature do

  it "should display information about the author" do
    @alan = FactoryBot.create :author
    visit author_path(@alan)
    expect(page).to have_text(@alan.name)
    expect(page).to have_text(@alan.homepage)
  end

end