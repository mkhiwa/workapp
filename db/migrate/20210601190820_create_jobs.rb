class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.references :consultant, null: false, foreign_key: true
      t.references :client, null: false, foreign_key: true
      t.string :location
      t.datetime :start_time
      t.datetime :end_time
      t.string :material
      t.decimal :cost
      t.text :notes

      t.timestamps
    end
  end
end
