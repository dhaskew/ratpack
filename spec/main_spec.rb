require 'spec_helper'

describe "My Site" do

  #context "before" do
  #  it "sets @title" do
  #    get "/"
  #    app.instance_variable_get("@title").should match("Thanks to the person that figured out how to get the Sinatra app instance")
  #  end
  #end

  context "GET '/'" do
    it "should be successful" do
      get '/'
      last_response.should be_ok
    end
  end

end
