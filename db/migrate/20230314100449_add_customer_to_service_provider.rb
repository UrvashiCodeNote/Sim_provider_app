class AddCustomerToServiceProvider < ActiveRecord::Migration[7.0]
  def change
    add_reference :service_providers, :customer, foreign_key: true
  end
end
