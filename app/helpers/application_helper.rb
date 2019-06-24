module ApplicationHelper
  def icon_link(category)
    params['category'] == category ? 'shops' : "shops?category=#{category}"
  end

  def icon_class(category)
    params['category'] == category ? 'icon-onclick' : 'icon'
  end
end
