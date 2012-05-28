module ApplicationHelper
  def subcategory_for(category, html = "")
    subcategories = @categories.subcategory_for(category)
    return html unless subcategories
    html << "<ul>"
    subcategories.each do |category|
      check_for_posts(category, html)
      html << "<li><span class='folder'>#{category.name}</span>"
      subcategory_for(category, html)
      html << "</li>"
    end
    html << "</ul>"
  end

  def check_for_posts(category, html = "")
    if category.posts.any?
      category.posts.each do |post|
        html << "<li><span class='file'>#{post.title}</span></li>"
      end
    end
  end
end
