############################
# Based on the original DreamHost deploy.rb recipe
#
#
# GitHub settings #######################################################################################
default_run_options[:pty] = true
set :repository, "git@github.com:bzangel/appTwo.git" #GitHub clone URL
set :scm, "git"
set :scm_passphrase, "" #This is the passphrase for the ssh key on the server deployed to
set :branch, "master"
set :scm_verbose, true
#########################################################################################################
set :user, 'jasonakira' #Dreamhost username
set :domain, 'akira-it.info' # Dreamhost servername where your account is located
set :project, 'appTwo' # Your application as its called in the repository
set :application, 'appstaff.akira-it.info' # Your app's location (domain or sub-domain name as setup in panel)
set :applicationdir, "/home/#{user}/#{application}" # The standard Dreamhost setup
 
# Don't change this stuff, but you may want to set shared files at the end of the file ##################
# deploy config
set :deploy_to, applicationdir
set :deploy_via, :remote_cache
 
# roles (servers)
role :app, domain
role :web, domain
role :db, domain, :primary => true
 
namespace :deploy do
 [:start, :stop, :restart, :finalize_update, :migrate, :migrations, :cold].each do |t|
   desc "#{t} task is a no-op with mod_rails"
   task t, :roles => :app do ; end
 end
end
 
# additional settings
default_run_options[:pty] = true # Forgo errors when deploying from windows
#ssh_options[:keys] = %w(/Path/To/id_rsa) # If you are using ssh_keys
#set :chmod755, "app config db lib public vendor script script/* public/disp*"
set :use_sudo, false
 
#########################################################################################################
 
