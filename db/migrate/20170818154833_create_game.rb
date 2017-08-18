class CreateGame < ActiveRecord::Migration[5.1]
  def up
    create_table :games
  end
end
