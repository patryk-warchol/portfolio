class CreateTechnologies < ActiveRecord::Migration[5.1]
  def change
    create_table :technologies do |t|
      t.string :name
      t.string :logo
      t.string :xp_pro
      t.string :xp_perso

      t.timestamps
    end
  end
end
