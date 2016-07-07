module Capistrano
  module Commit
    require 'capistrano/commit/version'
    require 'capistrano/commit/railtie' if defined?(Rails)
  end
end


