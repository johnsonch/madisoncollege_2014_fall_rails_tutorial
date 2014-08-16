require 'spec_helper'

describe "StaticPages" do

  subject { page }

  describe "Home page" do

    before { visit home_path }

    it{ should have_content('Sample App') }
    it{ should have_title("Ruby on Rails Tutorial Sample App") }
    it{ should_not have_title('| Home') }
  end

  describe "Help page" do

    before { visit help_path }

    it 'has the content "Help"' do
      expect(page).to have_content('Help')
    end
    
    it "has a title of Help" do
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end
  
   describe "About page" do

    before { visit about_path }

    it "should have the content 'About Us'" do
      expect(page).to have_content('About Us')
    end
     
     it "has a title of About" do
       expect(page).to have_title("Ruby on Rails Tutorial Sample App | About")
     end
  end
  
  describe "Contact page" do

    before { visit contact_path }

    it "should have the content 'Contact'" do
      expect(page).to have_content('Contact')
    end
    it "has a title of Contact" do
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    end
  end

end
