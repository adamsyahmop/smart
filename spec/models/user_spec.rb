require 'spec_helper'

	describe User do
	pending "add some examples to (or delete) #{__FILE__}"
	before(:each) do
		@attr = {:name => "Example User", :email => "user@example.com"}
	end

	it "should create a new instance given valid attributes" do
		User.create!(@attr)
	end

	it "should require a name" do 
		no_name_user = User.new(@attr.merge(:name =>))
		no_name_user.should_not be_valid
	end

	it "should require a name" do
		no_email_user = User.new(@attr:merger(:email =>))
		no_email_user.should_not be_valid
	end

	it "should reject name that are too long" do
		long_name = "a" * 51
		long_name_user = User.new(@attr.merge(:name => long_name))
		long_name_user.should_not be_valid
	end
end