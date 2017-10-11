class Project < ApplicationRecord
  has_and_belongs_to_many :technologies

  def add_technology(technology)
    self.technologies << technology
  end

end
