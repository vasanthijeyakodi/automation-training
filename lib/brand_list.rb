class ListofBrands < SitePrism::Section
  elements :brand_title, 'span.brand-title'
  def brand?(name)
  brand = brand_title.has_text?(name)
  end  

class BrandPage < SitePrism::Page
  elements :menu_items, 'div.item-label'
  sections :brand_list, ListofBrands, 'tr.odd, tr.even'

  def click_item(name) 
    item = menu_items.find{ |el|  el.text == name}
    item.click
  end

  def brand?(name)
    brand_list.any?{|el| el.brand?(name)}
  end

end  
  # def display_count

  # end

  # def total_count
  
  # end

  # def title

  # end

  # def filter_by

  # end

  # def clear_filter

  # end
end