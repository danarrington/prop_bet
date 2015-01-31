class CreatePicks < ActiveRecord::Migration
  def change
    create_table :picks do |t|
      t.references :bet_sheet, index: true
      t.references :answer, index: true

      t.timestamps
    end
  end
end
