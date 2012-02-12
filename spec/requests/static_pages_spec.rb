require 'spec_helper'

describe "Static pages" do
  
  describe "Home page" do
    
    it "should have the content 'DKF Translator'" do
      visit '/static_pages/home'
      page.should have_content('DKF Translator')
    end
    
    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title', text: "DKF Translator | Home")
    end
  end
  
  describe 'About page' do
    
    it "should have the content 'About DKF Solutions'" do
      visit '/static_pages/about'
      page.should have_content('About DKF Solutions')
    end
    
    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title', text: "DKF Translator | About Us")
    end
  end
end
