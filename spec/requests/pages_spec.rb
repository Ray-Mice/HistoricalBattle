require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    it "should have the content 'Historical Battle'" do
      visit '/pages/home'
      expect(page).to have_content('Historical Battle')
    end
  end
end
