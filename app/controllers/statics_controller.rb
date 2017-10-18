class StaticsController < ApplicationController
  def home
  end

  def portfolio
    @projects = Project.all
  end

  def competences
  end

  def contact
  end
end
