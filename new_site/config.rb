###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
activate :livereload

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :build_dir, 'build'
set :css_dir, 'css'
set :js_dir, 'js'
set :images_dir, 'img'
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
