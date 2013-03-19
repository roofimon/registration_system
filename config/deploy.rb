require 'rvm/capistrano'

set :user, 'ubuntu'
set :password, "I,jvogiH;lN0y'"
set :user_sudo, true
set :application, 'registration_system'
#set :repository,  'git@github.com:roofimon/registration_system.git'
set :repository, 'git@git.odd-e.com:~roof/agile-singapore/roofs-agile-singapore-2013.git'
set :deploy_to, "/home/ubuntu/cap/#{application}"
default_run_options[:pty] = true
ssh_options[:keys] = %w(/home/roofimon/.ssh/id_rsa_odd-e)
set :ssh_options, { :forward_agent => true }


role :web, '119.59.97.9'                          # Your HTTP server, Apache/etc
role :app, '119.59.97.9'                          # This may be the same as your `Web` server
role :db,  '119.59.97.9', :primary => true        # This is where Rails migrations will run
role :db,  '119.59.97.9'

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"
set :scm, 'git'
set :scm_user, 'roofimon@gmail.com'
set :scm_passphrase, "I,jvogiH;lN0y'"
set :branch, 'master'
set :git_shallow_clone, 1
set :scm_verbose, true
# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end