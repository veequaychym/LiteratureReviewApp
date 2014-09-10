require 'spec_helper'

describe "Static pages" do
  
  subject { page }
  
  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title)) }
  end
  
  describe "Home page" do
    before { visit root_path }
    
    let(:heading) { 'Literature Review App' }
    let(:page_title) { '' }
     
    it_should_behave_like "all static pages"
    it { should_not have_title('| Home') }
  end
  
  describe "Help page" do
    before { visit help_path }
    
    let(:heading) { 'Help' }
    let(:page_title) { 'Help' }
         
    it_should_behave_like "all static pages"
  end
  
  describe "About app page" do
    before { visit about_path }
        
    let(:heading) { 'About App' }
    let(:page_title) { 'About App' }
     
    it_should_behave_like "all static pages"
  end
  
  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title(full_title('About App'))
    click_link "Help"
    expect(page).to have_title(full_title('Help'))
    #click_link "Contact"
    #expect(page).to # fill in
    click_link "Home"
    click_link "Sign up now!"
    expect(page).to have_title(full_title('Sign up'))
    #click_link "Literature Review App"
    #expect(page).to have_title(full_title(''))
  end
end