module Capistrano
  module Commit
    class Railtie < Rails::Railtie
      rake_tasks do
        load 'tasks/commit.rake'
      end
    end
  end
end
