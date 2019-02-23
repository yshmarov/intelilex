class CreateLeads < ActiveRecord::Migration[5.2]
  def change
    create_table :leads do |t|
      t.string :email, :limit => 144, null: false
      t.string :comment

      t.timestamps
    end
  end
end
