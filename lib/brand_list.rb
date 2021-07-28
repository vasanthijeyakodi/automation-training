class BrandList < SitePrism::Page
  element  :count_tile,'div.dataTables_info'
  elements :rows, 'tr.even, tr.odd'
  element  :filter, '#brandsdatatable_filter input'

  def display_count
    header = count_tile.text
    header.gsub(/SHOWING (\d+) OF (\d+) BRANDS/, '\1')
  end

  def total_count
    header = count_tile.text
    header.gsub(/SHOWING (\d+) OF (\d+) BRANDS/, '\2')
  end

  def title
    rows.count
  end

  def filter_by(name)
    filter.set(name)
  end
  
  def clear_filter
    filter.set(nil)
  end
end
