class StaticsController < ApplicationController
  def home
  end

  def portfolio
    @projects = Project.all
  end

  def competences
    @technologies = Technology.all.order(:xp_pro).reverse
  end

  def contact
  end
end
