require "rails_helper"

module Feedbacks
  module Create
    RSpec.describe "StaffCreate", type: :system, js: true do
      it "creates feedback" do
        customer = create(:staff)
        visit root_path
        sign_in customer

        click_link "Add Feedback"

        fill_in "Title", with: "New suggestions"
        select "Bug", from: "Category"
        select "Planned", from: "Status"
        fill_in "Feedback Detail", with: "I have a suggestion"

        click_button "Add Feedback"

        expect(page).to have_text "Feedback was successfully created"
        expect(page).not_to have_text "New suggestions"
      end
    end
  end
end
