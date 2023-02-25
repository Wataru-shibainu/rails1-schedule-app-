class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :title
      t.datetime :startdate
      t.datetime :enddate
      t.string :allday

      t.timestamps
    end
  end
end
