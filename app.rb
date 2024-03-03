# app.rb

require 'sinatra'
require 'octokit'

# Replace 'YOUR_GITHUB_USERNAME' with your actual GitHub username
set :github_username, 'lexmakali'

get '/' do
  @repos = fetch_repositories(settings.github_username)
  erb :index
end

def fetch_repositories(username)
  client = Octokit::Client.new
  client.repositories(username)
end
