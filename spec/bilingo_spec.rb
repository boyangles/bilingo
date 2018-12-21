require_relative "../app.rb"
require "rspec"
require "rack/test"

describe "Bilingo" do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it "displays welcome text" do
    get "/"
    expect(last_response.body).to eq("Welcome to Bilingo!")
  end
end
