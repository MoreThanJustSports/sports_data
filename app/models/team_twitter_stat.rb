class TeamTwitterStat < ActiveRecord::Base
  belongs_to :team
  attr_accessible :followers, :following
end
