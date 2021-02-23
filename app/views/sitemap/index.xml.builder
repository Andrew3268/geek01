xml.instruct!

xml.urlset(xmlns: "http://www.sitemaps.org/schemas/sitemap/0.9") do
  xml.url do
    xml.loc root_url
    xml.changefreq("hourly")
    xml.priority "1.0"
  end
  @sales.each do |sale|
    xml.url do
      xml.loc sale_url(sale)
      xml.changefreq("daily")
      xml.priority "0.8"
      xml.lastmod sale.updated_at.strftime("%Y-%m-%dT%H:%M:%S.%2N%:z")
    end
  end
  @featureds.each do |featured|
    xml.url do
      xml.loc featured_url(featured)
      xml.changefreq("daily")
      xml.priority "0.8"
      xml.lastmod featured.updated_at.strftime("%Y-%m-%dT%H:%M:%S.%2N%:z")
    end
  end
  @picks.each do |pick|
    xml.url do
      xml.loc pick_url(pick)
      xml.changefreq("daily")
      xml.priority "0.8"
      xml.lastmod pick.updated_at.strftime("%Y-%m-%dT%H:%M:%S.%2N%:z")
    end
  end
end