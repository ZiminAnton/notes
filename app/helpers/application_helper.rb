module ApplicationHelper
  def subcategory_for(category, html = "")
    subcategories = @categories.subcategory_for(category)
    return html unless subcategories
    html << "<ul>"
    subcategories.each do |category|
      html << "<li><span class='folder'>#{category.name}</span>"
      subcategory_for(category, html)
      html << "</li>"
    end
    html << "</ul>"
  end
end
