require 'rails_helper'

RSpec.describe User, type: :model do
  
  describe "validations" do

    it "Yes 5 equals 5" do 
      expect(5).to eq(5)
    end 

    it "checks if a user with a specific name and email exists" do    
      user = User.create(name: "karthik", email: "karthik@example.com")

      expect(User.exists?(name: "karthik", email: "karthik@example.com")).to  be true
    end

    it "Name is too short" do 
      user = User.create(name: "Joe", email: "j@gmail.com")
      expect(user.name.length <= 2).to be false
    end 

    it "is valid with a name and email" do
      user = FactoryBot.create(:user)
      puts user.name, user.email
      expect(user).to be_valid
    end
    

    
  end

end 
