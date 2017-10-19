class Technology < ApplicationRecord
  has_and_belongs_to_many :projects
  belongs_to :tech_categories, required: false

  def add_project(project)
    self.projects << project
  end

  def category
    TechCategory.find(self.tech_category_id).name
  end

  def self.langages
    Technology.where(tech_category_id: TechCategory.find_by(name: "Langage").id.to_i)
  end

  def self.frameworks
    Technology.where(tech_category_id: TechCategory.find_by(name: "Framework").id.to_i)
  end

end
