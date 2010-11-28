require 'rbconfig'

class AndroidGenerator < RubiGen::Base
  DEFAULT_SHEBANG = File.join(Config::CONFIG['bindir'],
                              Config::CONFIG['ruby_install_name'])
  DEFAULT_PACKAGE  = "org.zerosum.android"

  attr_accessor :app_name, :package, :title, :author, :sdk_path

  default_options :author   => "Your Name", 
                  :sdk_path => "~/android/sdk"

  def initialize(runtime_args, runtime_options = {})
    super
    usage if args.empty?

    @destination_root = args.shift
    @app_name     = File.basename(File.expand_path(@destination_root)).underscore.camelize

    extract_options
  end

  def manifest
    record do |m|
      m.directory ""
      BASEDIRS.each { |dir| m.directory dir }

      m.directory "src/#{package.gsub('.', '/')}"
      m.template  "application.mirah",          "src/#{package.gsub('.', '/')}/#{app_name}.mirah"

      m.template  "AndroidManifest.xml",        "AndroidManifest.xml"
      m.template  "build.xml",                  "build.xml"

      m.template  "README.md",                  "README.md"

      m.template  "build.properties",           "build.properties"
      m.template  "default.properties",         "default.properties"
      m.template  "local.properties",           "local.properties"

      m.directory "res/layout"
      m.directory "res/values"
      m.template  "res/layout/main.xml",        "res/layout/main.xml"
      m.template  "res/values/strings.xml",     "res/values/strings.xml"

      m.directory "res/drawable-hdpi"
      m.template  "res/drawable-hdpi/icon.png", "res/drawable-hdpi/icon.png"
      m.directory "res/drawable-ldpi"
      m.template  "res/drawable-ldpi/icon.png", "res/drawable-ldpi/icon.png"
      m.directory "res/drawable-mdpi"
      m.template  "res/drawable-mdpi/icon.png", "res/drawable-mdpi/icon.png"
      
      # TODO: add tests, yo
    end
  end

  protected

  def banner
    "Usage: #{$0} [options] app-name"
  end

  def extract_options
    self.package  = (options[:package] ||= DEFAULT_PACKAGE)
    self.title    = (options[:title] ||= app_name.humanize)
    self.sdk_path = (options[:sdk_path] ||= sdk_path)
    self.author   = (options[:author] ||= author)
  end

  def add_options!(opts)
    opts.separator ''
    opts.separator 'Options:'
    opts.on("-P", "--package org.zerosum.android", String,
           "Package name for the application you're creating.",
           "Default: org.zerosum.android") { |opt| options[:package] = opt }
    opts.on("-S", "--sdkpath /path/to/android/sdk", String,
           "Path to the Android SDK installed on your system.",
           "Default: ~/android/sdk") { |opt| options[:sdk_path] = opt }
    opts.on("-T", "--title \"Hello World\"", String,
           "Title (display name) for the application.") { |opt| options[:title] = opt }
  end

  BASEDIRS = %w(res src)
end
