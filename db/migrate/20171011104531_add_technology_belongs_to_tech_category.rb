class AddTechnologyBelongsToTechCategory < ActiveRecord::Migration[5.1]
  def change
    add_reference :technologies, :tech_category, foreign_key: true
  end
end
