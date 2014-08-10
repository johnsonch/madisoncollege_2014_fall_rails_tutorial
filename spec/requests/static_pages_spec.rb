require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it 'has the content "Sample App"' do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
    
    it "has a title of Home" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
    end
  end
  describe "Help page" do
    it 'has the content "Help"' do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    
    it "has a title of Help" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end
  
   describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
     
     it "has a title of About" do
       visit '/static_pages/about'
       expect(page).to have_title("Ruby on Rails Tutorial Sample App | About")
     end
  end
end