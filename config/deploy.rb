shared_path = "~/ConfigInfo"
application = "sushmita_website"

default_run_options[:pty] = true  # Must be set for the password prompt from git to work

set :application, "sushmita_website"
set :repository,  "git@github.com:sushmitas/Personal-website.git"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

set :user, "sushmita"
set :deploy_via, :remote_cache
ssh_options[:forward_agent] = true

role :web, "simplysushmita.com:26453"                          # Your HTTP server, Apache/etc
role :app, "simplysushmita.com:26453"                          # This may be the same as your `Web` server
role :db,  "simplysushmita.com:26453", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

# Copy the database.yml from directory on server
after "deploy:update_code", "db:copyyml"

namespace :db do
	desc "Database setup"
	task :copyyml do
		run "cp #{shared_path}/#{application}/database.yml #{release_path}/config/database.yml"
	end
	
end

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

 namespace :deploy do
   task :start do ; end
   task :stop do ; end
   task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
   end
 end
