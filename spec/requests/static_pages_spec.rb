require 'spec_helper'

describe "Static pages" do

subject { page }

shared_examples_for "all static pages" do 
  it { should have_selector('h1', text: heading) }
  it { should have_title(full_title(page_title)) }
end 

  describe "Home page" do
    before { visit root_path }
    let(:heading)    { 'People make the best guide books.' }
    let(:page_title) { 'Make No Small Plans' }

    it_should_behave_like "all static pages"
    it { should_not have_title('| Home') }
  end

  describe "About page" do
    before { visit about_path }
    let(:heading)    { "The internet is a room full of strangers." }
    let(:page_title) { 'About the Project' }

    it_should_behave_like "all static pages"
  end

  describe "Apply page" do
    before { visit apply_path }
    let(:heading)    { 'Wanna publish with the project?' }
    let(:page_title) { 'Write for the Project' }

    it_should_behave_like "all static pages"
  end


  it "should have the right links on the layout" do
    visit root_path
    click_link "Home"
    expect(page).to have_title(full_title('Make No Small Plans'))
    click_link "About"
    expect(page).to have_title(full_title('About the Project'))
    click_link "Apply"
    expect(page).to have_title(full_title('Write for the Project'))  
    
  end  


end