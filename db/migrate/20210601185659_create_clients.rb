class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.references :consultant, null: false, foreign_key: true
      t.string :name
      t.string :location
      t.string :request_by
      t.string :contact_no
      t.string :email
      t.text :notes

      t.timestamps
    end
  end
end
