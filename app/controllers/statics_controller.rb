class StaticsController < ApplicationController
  def home
  end

  def portfolio
    @projects = Project.all
  end

  def competences
    @technologies = Technology.all
  end

  def contact
  end
end
