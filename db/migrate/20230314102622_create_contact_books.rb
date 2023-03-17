class CreateContactBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :contact_books do |t|
      t.integer :status
      t.string :phone_number
      t.belongs_to :customer
      t.belongs_to :service_provider

      t.timestamps
    end
  end
end
