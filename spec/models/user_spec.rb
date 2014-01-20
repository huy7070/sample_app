require 'spec_helper'

describe User do

#Runs code inside the block. Creates @user instance.
before {@user = USer.new(name: "example User", email: "user@example.com")}

#subject makes @user the default subject of the test example
subject{@user}




