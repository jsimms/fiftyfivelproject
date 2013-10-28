require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
    it "Should have the content 'People make the best guide books.'" do
      visit '/static_pages/home'
      expect(page).to have_content('People make the best guide books.')
    end

    it "should have the right title" do
  		visit '/static_pages/home'
  		expect(page).to have_title("Make No Small Plans | 55L Project")
		end

  end

  describe "About page" do
    it "Should have the content 'The internet is a room full of strangers. We're a bar full of friends.'" do
      visit '/static_pages/about'
      expect(page).to have_content("The internet is a room full of strangers. We're a bar full of friends.")
    end

    it "should have the right title" do
  		visit '/static_pages/about'
  		expect(page).to have_title("About the Project | 55L Project")
		end

  end

  describe "Apply page" do
    it "Should have the content 'Wanna publish with the project?'" do
      visit '/static_pages/apply'
      expect(page).to have_content("Wanna publish with the project?")
    end

    it "should have the right title" do
  		visit '/static_pages/apply'
  		expect(page).to have_title("Write for the Project | 55L Project")
		end

  end

end

