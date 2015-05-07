require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user = build(:user)
  end

  it "has a valid test factory" do
    expect(@user).to be_valid
  end

  it "is invalid without an email" do
    @user.email = nil
    expect(@user).to be_invalid
  end

  it "is invalid without a name" do
    @user.name = nil
    expect(@user).to be_invalid
  end

  it "is invalid without a password" do
    @user.password = nil
    expect(@user).to be_invalid
  end

  it "has a unique email address" do
    @user1 = create(:user)
    @user2 = build(:user)
    @user2.email = @user1.email

    expect(@user2).to be_invalid
  end
end
