class ListOfBrands < SitePrism::Section
  element :brand_title, 'span.brand-title'
  element :count_tile,'div.dataTables_info'
  def brand?(name)
  brand = (brand_title.text.downcase).any?(name.downcase)
  end  
end


class BrandPage < SitePrism::Page
  elements :menu_items, 'div.item-label'
  sections :brand_list, ListOfBrands, 'tr.odd, tr.even'

  def click_item(name) 
    item = menu_items.find{ |el|  el.text == name}
    byebug
    item.click
  end

  def brand?(name) 
    byebug
    brand_list.map { |el| el.text }.any?{|el| el.brand?(name)}
  end

end  
  def display_count
    display = count_tile.gsub of 
  end

  # def total_count
  
  # end

  # def title

  # end

  # def filter_by

  # end

  # def clear_filter

  # end