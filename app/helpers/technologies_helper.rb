module TechnologiesHelper

  def ccommee(id)
    if id == ""
      "No category"
    else
      TechCategory.find(id.to_i).name
    end
  end

end
