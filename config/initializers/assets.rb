# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )

Rails.application.config.assets.precompile += %w( royal_preloader.css )
Rails.application.config.assets.precompile += %w( parallax.min.js )
Rails.application.config.assets.precompile += %w( royal_preloader.min.js )

# Stylesheets
Rails.application.config.assets.precompile += %w( bootstrap.css )
Rails.application.config.assets.precompile += %w( ionicons.css )
Rails.application.config.assets.precompile += %w( pe-icon-7-stroke.scss )
Rails.application.config.assets.precompile += %w( magnific-popup.css )
Rails.application.config.assets.precompile += %w( logoiconfont.css )
Rails.application.config.assets.precompile += %w( style.css )
Rails.application.config.assets.precompile += %w( colors/blue.css )
Rails.application.config.assets.precompile += %w( base-light.css )

# Footer Scripts
Rails.application.config.assets.precompile += %w( bootstrap.min.js )
Rails.application.config.assets.precompile += %w( particles.min.js )
Rails.application.config.assets.precompile += %w( particlesRun.js )
Rails.application.config.assets.precompile += %w( jquery.mixitup.js )
Rails.application.config.assets.precompile += %w( form-validator.min.js )

Rails.application.config.assets.precompile += %w( scrollreveal.min.js )
Rails.application.config.assets.precompile += %w( jquery.inview.min.js )

Rails.application.config.assets.precompile += %w( jquery.countTo.js )
Rails.application.config.assets.precompile += %w( jquery.magnific-popup.min.js )
# Rails.application.config.assets.precompile += %w( style-switcher.js )
Rails.application.config.assets.precompile += %w( main.js )
Rails.application.config.assets.precompile += %w( google_maps_stock.js )
Rails.application.config.assets.precompile += %w( google_maps.js )

# Rails.application.config.assets.precompile += %w( drift.js )