class ChangeDataAlldayToUsers < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :allday, :boolean
  end
end
