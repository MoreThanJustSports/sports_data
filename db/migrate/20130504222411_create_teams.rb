class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :twitter_handle

      t.timestamps
    end
  end
end
