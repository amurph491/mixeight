require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "should have the h1 'MixEight'" do
      visit '/static_pages/home'
	  page.should have_selector('h1', :text =>'MixEight')
    end
	
	it "should have the title 'home'" do
		visit '/static_pages/home'
		page.should have_selector('title', :text => "MixEight | Home")
	end
  end
  describe "Help Page" do
    it "should have the h1 'Help'" do
      visit '/static_pages/help'
	  page.should have_selector('h1', :text =>'Help')
    end
	
	it "should have the title 'help'" do
		visit '/static_pages/help'
		page.should have_selector('title', :text => "MixEight | Help")
	end
  end

  describe "About page" do
    it "should have the h1 'About'" do
      visit '/static_pages/about'
	  page.should have_selector('h1', :text =>'About')
    end
	
	it "should have the title 'about'" do
		visit '/static_pages/about'
		page.should have_selector('title', :text => "MixEight | About")
	end
  end
end
