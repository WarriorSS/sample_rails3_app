require 'spec_helper'

describe "LayoutsLinks" do
  it "shoud have a home page at '/" do
    get '/'
    responce.should have_selector('title', :content=>"Home")
  end
  it "should have a Contact page at '/contact'" do
    get '/contact'
    respoce.should have_selector('title', :content=>"Contact")
  end
  it "should have an About page at '/about'" do
    get '/about'
    respoce.should have_selector('title', :content=>"About")
  end
  it "should have a Help page at '/help'" do
    get '/help'
    respoce.should have_selector('title', :content=>"Help")
  end
  
end
