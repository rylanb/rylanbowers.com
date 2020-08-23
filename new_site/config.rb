# Reload the browser automatically whenever files change
activate :livereload

set :build_dir, 'build'
set :css_dir, 'css'
set :js_dir, 'js'
set :images_dir, 'images'
set :haml, { format: :html5 }

# Build-specific configuration
configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash # Enable cache buster
end

after_build do |builder|
  FileUtils.cp_r 'source/_redirects', 'build'
end
