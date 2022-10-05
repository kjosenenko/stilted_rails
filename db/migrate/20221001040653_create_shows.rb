class CreateShows < ActiveRecord::Migration[7.0]
  def change
    create_table :shows do |t|
      t.string :venue
      t.string :presale_link
      t.boolean :has_presale
      t.text :supporting_acts
      t.string :show_time
      t.date :show_date

      t.timestamps
    end
  end
end
