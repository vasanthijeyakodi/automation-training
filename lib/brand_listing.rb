class BrandListing < SitePrism::Page
  element  :table, 'table#brandsdatatable' 
  element  :footer, 'th.public_fan_acquisition_score div.brand-metrics'
  elements :fan_growth, 'tbody [data-datapoint="lfm.audience_ratings.public_fan_acquisition_score"]'
  element  :span, 'span.not-selected-option'
  def sum_fan_growth
   var = fan_growth.map {|x| x['title'].delete(',').to_i}.sum
  end
  
  def aggregate 
   footer['data-sortvalue'].to_i
  end
  
  def average_fan_growth
   average = fan_growth.map {|x| x['title'].delete(',').to_i}.sum/6
  end  
  
end
