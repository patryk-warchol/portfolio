class CreateLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :links do |t|
      t.string :name
      t.string :fa_icon_name
      t.string :link
      t.string :color
      t.string :size

      t.boolean :footer_visible

      t.timestamps
    end
  end
end
