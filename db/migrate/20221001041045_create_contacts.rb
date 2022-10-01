class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.string :contact_name
      t.string :contact_email
      t.string :contact_phone
      t.string :message_subject
      t.text :message_body

      t.timestamps
    end
  end
end
