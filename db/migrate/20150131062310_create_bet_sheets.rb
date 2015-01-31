class CreateBetSheets < ActiveRecord::Migration
  def change
    create_table :bet_sheets do |t|
      t.string :name
      t.boolean :master

      t.timestamps
    end
  end
end
