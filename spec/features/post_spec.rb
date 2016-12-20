require 'rails_helper'


  describe 'creation' do 
    before do 
      visit new_post_path
    end

    it "has a new form can be reached" do 
      expect(page.status_code).to eq(200)
    end

    it 'can be created from new form page' do 
      visit new_post_path
      fill_in 'post[date]', with: Date.today
      fill_in 'post[rationale]', with: "Some rationale"

      click_on "Save"

      expect(page).to have_content("Some rationale")
    end
  end