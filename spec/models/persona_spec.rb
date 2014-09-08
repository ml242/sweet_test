require 'spec_helper'
# require 'database_cleaner'
# DatabaseCleaner.strategy = :truncation


describe User do

  it "is valid with a name" do
    matt = Persona.new(name: "matt", )
    expect(matt.save).to eq(true)
  end

  before(:each) do
    @user = FactoryGirl.create(:persona)
  end

  after(:each) do
    DatabaseCleaner.clean
  end

  it "returns the name of the user" do
    expect(@user.name).to eq("John")
  end

  it "can return the phone number of a user"

end