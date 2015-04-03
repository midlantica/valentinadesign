###
# Compass
###

# Susy grids in Compass
# First: gem install susy --pre
# require 'susy'

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy (fake) files
# page "/this-page-has-no-template.html", :proxy => "/template-file.html" do
#   @which_fake_page = "Rendering a fake page with a variable"
# end

###
# Helpers
###

# Automatic image dimensions on image_tag helper
activate :automatic_image_sizes

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# set :sass_dir, 'css'
set :scss_dir, 'css'
set :css_dir, 'css'
set :js_dir, 'js'
set :images_dir, 'img'

set :partials_dir, 'partials'

set :site_title, 'Valentina Design - Feeling Inspired'
set :site_url, 'http://www.valentinadesign.com'

#----------------------------

#Folder settings
relative_assets = true      #because we're not working from the root
sass_dir = "css"    #where our .scss files are
css_dir = "css"      #where the CSS will saved
images_dir = "img"   #the folder with your images



# You can select your preferred output style here (can be overridden via the command line):
output_style = :expanded # After dev :compressed

# To disable debugging comments that display the original location of your selectors. Uncomment:
line_comments = true

# Obviously
preferred_syntax = :scss


# Reload the browser automatically whenever files change
# configure :development do
activate :livereload
# end

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  # activate :cache_buster

  # Use relative URLs
  # activate :relative_assets

  # Compress PNGs after build
  # First: gem install middleman-smusher
  # require "middleman-smusher"
  # activate :smusher

  # Or use a different image path
  # set :http_path, "/Content/images/"

  #minify html
  activate :minify_html

end



