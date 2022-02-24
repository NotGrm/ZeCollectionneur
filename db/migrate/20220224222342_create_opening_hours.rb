class CreateOpeningHours < ActiveRecord::Migration[7.0]
  def change
    create_table :opening_hours do |t|
      t.string :day
      t.time :opening
      t.time :closing
      t.boolean :day_off, null: false, default: false
      t.belongs_to :shop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
