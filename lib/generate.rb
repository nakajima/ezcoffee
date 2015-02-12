require 'fileutils'
require 'erb'

module EZCoffee
  class Generator
    def self.generate(project)
      new(project).generate
    end

    def initialize(project)
      @project = project
    end

    def generate
      abort "#{@project} already exists" if File.exists?(@project)

      # Make the directories
      FileUtils.mkdir @project
      FileUtils.mkdir_p "./#{@project}/src"
      FileUtils.mkdir_p "./#{@project}/js"

      # Generate the files
      project_coffee = "./#{@project}/src/#{@project}.coffee"
      project_index  = "./#{@project}/index.html"
      File.open(project_coffee, 'w+') { |f| f.puts "# Generated by ezcoffee" }
      File.open(project_index, 'w+')  { |f| f.puts html }
    end

    def html
      template = File.read("#{File.dirname(__FILE__)}/index.erb")
      ERB.new(template).result(binding)
    end
  end
end
