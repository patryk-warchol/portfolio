class Technology < ApplicationRecord
  has_and_belongs_to_many :projects
  belongs_to :tech_categories, required: false

  def add_project(project)
    self.projects << project
  end

  def category
    TechCategory.find(self.tech_category_id)
  end

end
