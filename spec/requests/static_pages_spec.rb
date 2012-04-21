require 'spec_helper'

describe "StaticPages" do
let(:base_title) { "MixEight" }
subject {page}
  describe "Home Page" do
	before{visit root_path}
    it { should have_selector('h1', :text =>'MixEight') }
	it { should have_selector('title', :text => "#{base_title}") }
	it { should_not have_selector 'title', text: '| Home' }
  end
  
  describe "Help Page" do
	before {visit help_path}
    it {should have_selector('h1', :text =>'Help') }
	it { should have_selector('title', :text => "#{base_title} | Help") }
  end

  describe "About page" do
	before{visit about_path}
    it { should have_selector('h1', :text =>'About') }
	it {should have_selector('title', :text => "#{base_title} | About")}
  end
  
  describe "Contact Page" do
	before {visit contact_path}
    it {should have_selector('h1', :text =>'Contact Us')}
	it {should have_selector('title', :text => "#{base_title} | Contact")}
  end
end
