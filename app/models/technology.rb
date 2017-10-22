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

  def self.available(project_id)
    $techs = []
    Technology.all.each do |technology|
      $included = false
      Project.find(project_id).technologies.each do |project_technology|
        if technology.id == project_technology.id
          $included = true
        end
      end
      if $included == false
        $techs << technology
      end
    end
    return $techs
  end

end
