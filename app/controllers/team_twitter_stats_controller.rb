class TeamTwitterStatsController < ApplicationController
  # GET /team_twitter_stats
  # GET /team_twitter_stats.json
  def index
    @team_twitter_stats = TeamTwitterStat.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @team_twitter_stats }
    end
  end

end
