class AddAttrsToRings < ActiveRecord::Migration[5.1]
  def up
    change_table(:rings) do |t|
      t.column :number, :integer
      t.column :time, :integer
      t.column :players, :integer
    end
  end
  
  def down
    change_table(:rings) do |t|
      t.remove :number
      t.remove :time
      t.remove :players
    end
  end
end
