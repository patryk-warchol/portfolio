class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :image
      t.string :my_role
      t.text :desc

      t.timestamps
    end
  end
end
