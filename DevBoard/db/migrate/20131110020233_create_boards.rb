class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.text :text

      t.timestamps
    end
  end
end
