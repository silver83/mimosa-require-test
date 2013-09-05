exports.config = {
  modules: ['require']

  watch:
    sourceDir: "src"                # directory location of web assets, can be relative to
    javascriptDir: ""       # Location of precompiled javascript (i.e.
  vendor:                              # settings for vendor assets
    javascripts: "vendor"  # location, relative to the watch.sourceDir, of vendor
                                         # javascript assets. Unix style slashes please.
    stylesheets: "vendor"  # location, relative to the watch.sourceDir, of vendor

  server:                      # configuration for server when server option is enabled via CLI
    defaultServer:
      enabled: true              # whether or not mimosa starts a default server for you, when
    views:                     # configuration for the view layer of your application
      compileWith: 'hogan'      # Valid options: "jade", "hogan", "html", "ejs", "handlebars", "dust".
                                 # The compiler for your views.
      extension: 'hjs'        # extension of your server views
      path: 'src/views'            # This is the path to project views, it can be absolute or

  require:                 # configuration for requirejs options.
    tracking:
      enabled: true
}