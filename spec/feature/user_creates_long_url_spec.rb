require "spec_helper"

feature "User creates Long URL" do
  scenario "with a valid URL, long URL is created" do
    visit "/"

    fill_in "Normal url", :with => "http://google.com"

    expect {
      click_button "Longify!"
    }.to change(LongUrl, :count).by(1)
  end

  scenario "with a valid URL, displays long URL at top of front-page list" do
    visit "/"

    fill_in "Normal url", :with => "http://google.com"
    click_button "Longify!"
    
    within("ul li:first-child") do
      expect(page).to have_text("http://google.com")
      expect(find(".long-url").text()).to have(2000).characters 
    end
  end
end