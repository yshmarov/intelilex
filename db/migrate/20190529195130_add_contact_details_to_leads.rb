class AddContactDetailsToLeads < ActiveRecord::Migration[5.2]
  def change
    add_column :leads, :last_name, :string
    add_column :leads, :first_name, :string
    add_column :leads, :phone_number, :string
    add_column :leads, :company, :string
  end
end
