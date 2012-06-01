module ApplicationHelper
  def subcategory_for(category, html = "")
    subcategories = @categories.subcategory_for(category)
    return html unless subcategories
    html << "<ul>"
    subcategories.each do |category|
      html << "<li><span class='folder' id=category_#{category.id}>#{category.name}</span>"
      check_for_posts(category, html)
      subcategory_for(category, html)
      html << "</li>"
    end
    html << "</ul>"
  end

  def check_for_posts(category, html = "")
    if category.posts.any?
      html << "<ul>"
      category.posts.each do |post|
        html << "<li><span class='file' id='post_#{post.id}'>#{post.title}</span></li>"
      end
      html << "</ul>"
    else
      ''
    end
  end
end
