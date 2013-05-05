# encoding: UTF-8

task :pop_greet do
  puts "Hello World From Populate!"
end

task :tweet_stats => :environment do
  require 'open-uri'  
  @teams = Team.all
  
  @teams.each do |team|
    @team_twitter_stat = TeamTwitterStat.new
    begin
      json = open "https://api.twitter.com/1/users/show.json?screen_name=" + team.twitter_handle + "&include_entities=true"
    rescue
      # a multitude of HTTP-related errors can occur
    end
    parsed_json = ActiveSupport::JSON.decode(json)
    @team_twitter_stat.team = team
    @team_twitter_stat.following = parsed_json["friends_count"]
    @team_twitter_stat.followers = parsed_json["followers_count"]
    @team_twitter_stat.statuses_count = parsed_json["statuses_count"]    
    @team_twitter_stat.save    
  end

end

