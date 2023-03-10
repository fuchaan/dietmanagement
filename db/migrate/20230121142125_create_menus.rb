class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.string      :main_name,     null: false
      t.integer     :main_calorie,  null: false
      t.integer     :drink_name,    null: false
      t.integer     :drink_calorie, null: false
      t.references  :user,    null:false, foreign_key: true
      t.timestamps
    end
  end
end
