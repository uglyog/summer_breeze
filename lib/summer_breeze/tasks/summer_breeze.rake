namespace :summer_breeze do

  desc "Generate fixtures for jasmine tests"
  task :generate_fixtures => :environment do
    require File.expand_path("#{Rails.root}/config/environment", __FILE__)
    require "#{Rails.root}/spec/javascripts/support/summer_breeze"
    SummerBreeze::Container.run
  end

  desc "Generate fixtues and run jasmine"
  task :generate_and_jasmine => [:generate_fixtures, :jasmine]

  desc "Generate fixtues and run jasmine:ci"
  task :generate_and_jasmine_ci => [:generate_fixtures, "jasmine:ci"]

end