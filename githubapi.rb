require 'github_api'

#Github.configure do |c|
  #c.oauth_token = ''
#end

def get_branches
  branches = Hash.new
  repos = Github::Client::Repos.new
  repos.branches user: 'JGaudette', repo: 'myhackerdiet' do |branch|
    branches[branch.name] = branch.commit.sha[0..5]
  end

  return branches
end
