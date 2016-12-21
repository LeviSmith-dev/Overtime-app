require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Creation" do 
  	before do
  		@user = User.create(email: "test@test.com", password: "levi32", password_confirmation: "levi32", first_name: "levi", last_name: "smith")
  		expect(@user).to be_valid
  	end 

    it "can be created" do
      expect(@user).to be_valid
    end

  	it "cannot be created without first_name, Last_name" do
  		@user.first_name = nil
  		@user.last_name = nil
  		expect(@user).to_not be_valid
  	end
  end
end
