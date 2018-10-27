require 'rails_helper'

describe "New author page", type: :feature do
  new_author_path = "new_author"

  it "should render withour error" do
    visit new_author_path
  end
end