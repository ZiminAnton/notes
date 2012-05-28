module ApplicationHelper
  def subcategory_for(category, html = "")
    subcategories = @categories.subcategory_for(category)
    return html unless subcategories
    html << "<ul>"
    subcategories.each do |category|
      html << "<li><span class='folder'>#{category.name}</span></li>"
      subcategory_for(category, html)
    end
    html << "</ul>"
  end
end
