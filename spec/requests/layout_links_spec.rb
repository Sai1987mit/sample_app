require 'spec_helper'

describe "LayoutLinks" do
  
  it "should have a home page at '/'"  do

  get '/'
  response.should have_selector('title', :key => "home") 
  end


  it "should have a Contact page at '/contact'" do
  get '/contact'
  response.should have_selector('title', :content => "Contact")
  end

  it "should have an about page at '/about'" do
get '/about'
response.should have_selector('title', :content => "About")
  end


end


