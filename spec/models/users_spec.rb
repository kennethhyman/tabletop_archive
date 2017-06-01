require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do 
    @user = User.new(first_name: "Kenneth", last_name: "Hyman", email: "email@email.com", password: "password")
  end
  
  it "is valid without properly formatted email address" do
    valid_addresses = %w(user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn)
    valid_addresses.each do |address|
      @user.email = address
      expect(@user).to be_valid
    end
  end

  it "is not valid with improperly formatted email addresses" do 
    invalid_addresses = %w(ser@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com)
    invalid_addresses.each do |address|
      @user.email = address
      expect(@user).to_not be_valid
    end
  end

  it "is not valid without password" do
    @user.password = "      "
    expect(@user).to_not be_valid
  end

  it "is not valid without first and last name" do
    @user.first_name = "      "
    expect(@user).to_not be_valid
    @user.last_name = "     "
    @user.first_name = "Kenneth"
    expect(@user).to_not be_valid
    @user.last_name = "Hyman"
    expect(@user).to be_valid
  end

  it "is not valid without a unique email address" do
    @user.email = "fakeemail@email.com"
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    expect(duplicate_user).to_not be_valid
  end

  it "is saving emails as lowercase" do
    randomly_capitalized_email = "thiS.iSMyEmaIl@emAil.COm"
    @user.email = randomly_capitalized_email 
    @user.save
    expect @user.reload
  end
end
