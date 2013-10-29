require 'spec_helper'

describe "StaticPages" do

	let(:base_title) { " | 55L Project" }

  describe "Home page" do
    it "Should have the content 'People make the best guide books.'" do
      visit root_path
      expect(page).to have_content('People make the best guide books.')
    end

    it "should have the right title" do
  		visit root_path
  		expect(page).to have_title("Make No Small Plans #{base_title}")
		end

  end

  describe "About page" do
    it "Should have the content 'The internet is a room full of strangers. We're a bar full of friends.'" do
      visit about_path
      expect(page).to have_content("The internet is a room full of strangers. We're a bar full of friends.")
    end

    it "should have the right title" do
  		visit about_path
  		expect(page).to have_title("About the Project #{base_title}")
		end

  end

  describe "Apply page" do
    it "Should have the content 'Wanna publish with the project?'" do
      visit apply_path
      expect(page).to have_content("Wanna publish with the project?")
    end

    it "should have the right title" do
  		visit apply_path
  		expect(page).to have_title("Write for the Project #{base_title}")
		end

  end

end

