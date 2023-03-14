class CreateContactBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :contact_books do |t|
      t.integer :status
      t.string :contact_number
      t.belongs_to :customer
      t.belongs_to :serviceprovider

      t.timestamps
    end
  end
end
