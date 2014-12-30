set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :relative_links, true

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
  activate :relative_assets
  set :http_prefix, "/Content/images/"
end

configure :development do
  activate :livereload
end

activate :automatic_image_sizes
