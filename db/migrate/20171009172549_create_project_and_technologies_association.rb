class CreateProjectAndTechnologiesAssociation < ActiveRecord::Migration[5.1]
  def change
    create_table :projects_technologies, id: false do |t|
      t.belongs_to :project, index: true
      t.belongs_to :technology, index: true
    end
  end
end