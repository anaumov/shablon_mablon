Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.quiet = true
Rails.application.config.assets.precompile += %w(swagger.css swagger.js)
Rails.application.config.assets.paths << Rails.root.join('vendor', 'assets', 'components')
Rails.application.config.assets.paths << Rails.root.join('app', 'assets', 'fonts')
Rails.application.config.assets.paths << Rails.root.join('app', 'assets', 'app', 'templates')
Rails.application.config.assets.precompile = Rails.application.config.assets.precompile + %w(*.png *.jpg *.jpeg *.gif *.woff *.ttf *.svg *.eot *.html)
