require "capistrano/phoenix/version"

load File.expand_path("../phoenix/tasks/dependencies.rake", __FILE__)
load File.expand_path("../phoenix/tasks/build.rake", __FILE__)

module Capistrano
  module Phoenix ; end
end
