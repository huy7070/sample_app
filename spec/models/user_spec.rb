require 'spec_helper'

describe User do

#Runs code inside the block. Creates @user instance.
before {@user = User.new(name: "example User", email: "user@example.com")}

#subject makes @user the default subject of the test example
subject{@user}

#Ensures that contructors are valid.
it {should respond_to(:name)}
it {should respond_to(:email)}

#Sanity check. Verifying the @user is initially valid
it {should be_valid}

#Sets the user's name to an invalid value, then checks if it's invalid.
describe "when name is not present" do
	before {@user.name = " "}
	it {should_not be_valid}
end

#Same test for blank email as above.
describe "when email is not present" do
    before { @user.email = " " }
    it { should_not be_valid }
  end
  
#Checks to see if name lenght verification works.
describe "when name is too long" do
	before {@user.name = "a" * 51}
	it (should_not_be_valid}
end




	

end #End of test file



