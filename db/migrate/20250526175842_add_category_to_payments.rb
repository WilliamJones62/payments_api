class AddCategoryToPayments < ActiveRecord::Migration[7.1]
  def change
    add_column :payments, :category, :string
  end
end
