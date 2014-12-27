# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

# Don't initialize the application when precompiling assets. Doing so on Heroku problematic
# since the environment config is not available during slug completions (see user-env-compile).
Rails.application.config.assets.initialize_on_precompile = false
Rails.application.config.assets.precompile += %w( exif.js barcode/DecoderWorker.js barcode/job_upload.js barcode/JOB.js )

