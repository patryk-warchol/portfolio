module ApplicationHelper

  def title(page_title = '')
    base_title = "Patryk Warchol"
    if page_title.empty?
        base_title
    else
        page_title
    end
  end

  def puts_footer_icon(link)
    html_elt = ""
      if link.footer_visible
        html_elt << " link_to '', '" 
        html_elt << link.link.to_s 
        html_elt << "', class: 'fa " 
        html_elt << link.fa_icon_name.to_s 
        html_elt << " fa-" + link.size.to_s 
        html_elt << "x portfolio-footer-fa', style: 'color: "
        html_elt << link.color
        html_elt << ";'"
      end
    return eval(html_elt.html_safe)
  end

end
