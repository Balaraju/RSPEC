require 'rails_helper'

RSpec.describe User, :type => :model do

  it "has a valid user" do
    expect(User.create(first_name: "Bala", last_name: "Vankala", city: "vizag")).to be_valid
  end
  
  it "is invalid without a firstname" do
    expect(User.new( last_name: "bala")).to_not be_valid
  end
  it "is invalid without a lastname" do
    expect(User.new(first_name: "Bala")).to_not be_valid
  end
  
  it "returns a user's full name as a string" do 
    user = User.create(first_name: "bala", last_name: "raju")
    expect(user.full_name).to eq("bala raju")
  end
  
  it "display all employee names" do
    user = User.create(first_name: "bala", last_name: "raju")
    user1 = User.create(first_name: "bala1", last_name: "raju")
    user2 = User.create(first_name: "bala2", last_name: "raju")
    expect(User.users_names).to eq(["bala", "bala1", "bala2"])
  end
  
end
