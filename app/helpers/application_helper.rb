module ApplicationHelper

  #if on active page, color = white. Else, color = default
  #take arguments: link, current page, path_name(url of the link) change font color
  def active_link_to (nav_link, contrl, action, url,style)
    if controller_name == contrl && action_name == action
      return link_to nav_link, url, id:style
    else
      return link_to nav_link, url, class:style
    end
  end

end
