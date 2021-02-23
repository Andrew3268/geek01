# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.example.com"

SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end
  add sales_path, :priority => 0.5, :changefreq => 'daily'
  Sale.find_each do |sale|
    add sale_path(sale), :lastmod => sale.updated_at, :priority => 0.5
  end

  add picks_path, :priority => 0.5, :changefreq => 'daily'
  Pick.find_each do |pick|
    add pick_path(pick), :lastmod => pick.updated_at, :priority => 0.5
  end

  add featureds_path, :priority => 0.5, :changefreq => 'daily'
  Featured.find_each do |featured|
    add featured_path(featured), :lastmod => featured.updated_at, :priority => 0.5
  end
end
