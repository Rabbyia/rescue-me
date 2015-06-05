class CreateInfoPages < ActiveRecord::Migration
  def change
    create_table :info_pages do |t|
      t.string :information

      t.timestamps null: false
    end
  end
end
