module ApplicationHelper

  def title(page_title = '')
    base_title = "Patryk Warchol"
    if page_title.empty?
        base_title
    else
        page_title
    end
  end

end
