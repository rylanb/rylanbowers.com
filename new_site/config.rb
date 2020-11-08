# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

config[:css_dir] = 'css'
config[:js_dir] = 'js'
config[:images_dir] = 'images'
set :haml, { format: :html5 }

# Build-specific configuration
configure :build do
  activate :minify_css
  activate :minify_javascript
  # activate :asset_hash # Enable cache buster
  activate :gzip
end

after_build do |builder|
  FileUtils.cp_r 'source/_redirects', 'build'
end
