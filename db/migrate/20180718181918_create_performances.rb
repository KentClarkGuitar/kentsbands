class CreatePerformances < ActiveRecord::Migration[5.2]
  def change
    create_table :performances do |t|
      t.datetime :showtime
      t.string :venue
      t.references :band, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
