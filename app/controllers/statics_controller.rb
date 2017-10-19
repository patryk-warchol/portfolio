class StaticsController < ApplicationController
  def home
    @projects = Project.last(3)
    @langages = Technology.langages.order(:xp_pro).reverse.first(3)
    @frameworks = Technology.frameworks.order(:xp_pro).reverse.first(3)
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
