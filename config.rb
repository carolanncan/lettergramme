set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :relative_links, true

activate :deploy do |deploy|
  deploy.method = :git
  deploy.branch = "gh-pages"
  deploy.strategy = :force_push
  deploy.build_before = true
end

activate :google_analytics do |ga|
  ga.tracking_id = 'UA-51006708-1'
  ga.domain_name = 'lettergram.me'
end

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :relative_assets
end

configure :development do
  activate :livereload
end

activate :automatic_image_sizes
