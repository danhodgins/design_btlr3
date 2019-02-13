class AddCustomerToJob < ActiveRecord::Migration[5.1]
  def change
    add_reference :jobs, :customer, foreign_key: true
  end
end
