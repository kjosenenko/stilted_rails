class CreateShows < ActiveRecord::Migration[7.0]
  def change
    create_table :shows do |t|
      t.string :venue
      t.string :presale_link
      t.boolean :has_presale
      t.json :support_acts
      t.datetime :show_time

      t.timestamps
    end
  end
end
