path     = require 'path'
rootPath = path.normalize __dirname + '/..'
env      = process.env.NODE_ENV || 'development'

config =
  development:
    root: rootPath
    app:
      name: 'writing'
    port: 3000
    db: 'mongodb://localhost/writing-development'

  test:
    root: rootPath
    app:
      name: 'writing'
    port: 3000
    db: 'mongodb://localhost/writing-test'

  production:
    root: rootPath
    app:
      name: 'writing'
    port: 3000
    db: 'mongodb://localhost/writing-production'

module.exports = config[env]
