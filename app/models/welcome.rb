class Welcome
  attr_reader :starred_repos, :followers, :following, :doc, :organizations, :events, :gitstats
  def initialize(current_service, current_user)
    @starred_repos = Repo.new(current_service)
    @followers     = Follower.new(current_service)
    @following     = Following.new(current_service)
    @doc           = Summary.new(current_user.nickname)
    @organizations = Organization.new(current_service, current_user.nickname)
    @events        = Event.new(current_service)
  end
end
