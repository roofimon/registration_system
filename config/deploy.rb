set :user, 'deploy'
set :password, "I,jvogiH;lN0y'"
set :user_sudo, true
set :application, 'registration_system'
set :repository,  'git@github.com:roofimon/registration_system.git'
set :deploy_to, "/home/deploy/#{application}"
default_run_options[:pty] = true


require "rvm/capistrano"



# set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, '119.59.97.9'                          # Your HTTP server, Apache/etc
role :app, '119.59.97.9'                          # This may be the same as your `Web` server
role :db,  '119.59.97.9', :primary => true # This is where Rails migrations will run
role :db,  '119.59.97.9'

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"
set :scm, 'git'
set :scm_user, 'roofimon@gmail.com'
set :scm_passphrase, "I,jvogiH;lN0y'"
set :ssh_options, { :forward_agent => true }
ssh_options[:keys] = %w(/home/deploy/.ssh/id_rsa)
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