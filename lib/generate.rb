require 'fileutils'

module EZCoffee
  class Generator
    def self.generate(project)
      new(project).generate
    end
    
    def initialize(project)
      @project = project
    end

    def generate
      project_coffee = "./src/#{@project}.coffee"
      project_index  = "./index.html"

      abort "#{@project} already exists" if File.exists?(@project)

      # Make the directories
      FileUtils.mkdir @project
      FileUtils.cd @project
      FileUtils.mkdir "./src"
      FileUtils.mkdir "./js"

      # Generate the coffee file
      FileUtils.touch project_coffee

      # Generate the HTML test file
      FileUtils.touch project_index

      File.open(project_index, 'w+') { |f| f.puts html }
    end

    def html
      <<-HTML.strip.gsub(/^        /, '')
        <html>
          <head>
            <title>#{@project}</title>
            <script src="#{@project}.js" type="text/javascript" charset="utf-8"></script>
          </head>
          <body>
            Open #{@project}/index.html and edit me.
          </body>
        </html>
      HTML
    end
  end
end
