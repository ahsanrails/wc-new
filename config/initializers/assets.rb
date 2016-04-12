# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
# Rails.application.config.assets.precompile += %w( civic_2016.png )
#Rails.application.config.assets.precompile += %w( logo_transparent.png )
#Rails.application.config.assets.precompile += %w( property.jpg )

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path
#for bxslider
Rails.application.config.assets.precompile += %w( bx_loader.gif controls.png )
# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
