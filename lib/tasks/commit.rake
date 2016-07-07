namespace :capistrano do

  namespace :commit do
    desc 'Save current host revision'
    task :save => :environment do

      m = ActiveRecord::Migration.new
      unless m.table_exists?(:capistrano_commits)
        m.create_table :capistrano_commits do |t|
          t.string :host
          t.string :revision
          t.timestamps
        end
      end

      class CapistranoCommit < ActiveRecord::Base
        self.table_name = :capistrano_commits
      end

      CapistranoCommit.create(host: ENV['HOST'], revision: ENV['REVISION'])

    end

  end

end
