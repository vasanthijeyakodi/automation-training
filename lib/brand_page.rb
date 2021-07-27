class ListOfBrands < SitePrism::Section
  element :brand_title, 'span.brand-title'
  def brand?(name)
    (brand_title.text.downcase).include?(name.downcase)
  end  
end

class BrandPage < SitePrism::Page
  elements :menu_items, 'div.item-label'
  sections :brands, ListOfBrands, 'tr.odd, tr.even'

  def click_item(name) 
    item = menu_items.find{ |el| el.text.downcase == name.downcase}
    item.click
  end

  def brand?(name) 
    brands.any?{|el| el.brand?(name)}
  end
end
