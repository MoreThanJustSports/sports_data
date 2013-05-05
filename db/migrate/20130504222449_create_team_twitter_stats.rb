class CreateTeamTwitterStats < ActiveRecord::Migration
  def change
    create_table :team_twitter_stats do |t|
      t.references :team
      t.integer :followers
      t.integer :following
      t.integer :statuses_count
      
      t.timestamps
    end
    add_index :team_twitter_stats, :team_id
  end
end
