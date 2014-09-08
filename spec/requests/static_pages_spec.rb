require 'spec_helper'

describe "Static pages" do
  let(:base_title) { "Literature Review App" }
  describe "Home page" do
    it "should have the content 'Literature Review App'" do
      visit '/static_pages/home'
      expect(page).to have_content(base_title)
    end
    
    it "should have the title 'Literature Review App'" do
      visit '/static_pages/home'
      expect(page).to have_title(base_title)
    end
  end
  
  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} | Help")
    end
  end
  
  describe "About app page" do
    it "should have the content 'About App'" do
      visit '/static_pages/about'
      expect(page).to have_content('About App')
    end
    
    it "should have the title 'About App'" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | About App")
    end
  end
end