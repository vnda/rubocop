# frozen_string_literal: true

require "bundler/gem_tasks"
require "rubocop"

task :show_cops do
  cli = RuboCop::CLI.new
  result = cli.run(["--show-cops", "--config", "#{Dir.pwd}/default.yml"])
  exit result
end
