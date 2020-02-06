# deploy.rb

# config valid only for current version of Capistrano
lock '3.11.2'

set :application, 'iforgeiot'
set :repo_url, 'git@github.com:bhaveshprajapat/iforgeiot.git'

# RVM path selection: :rvm_type
# :auto (default): just tries to find the correct path. ~/.rvm wins over /usr/local/rvm
# :system: defines the RVM path to /usr/local/rvm
# :user: defines the RVM path to ~/.rvm

set :rvm_type, :user
set :rvm_ruby_version, 'ruby-2.6.3'
set :rvm_custom_path, '/home/iforge/.rvm'
server "iforge@iforge.shef.ac.uk"
set :user, "iforge"
set :deploy_to, "/home/iforge/iot/rails"

# Default branch is :master
# ask :branch, ‘master’

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, '/var/www/my_app_name'

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :airbrussh.
 set :format, :pretty

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: 'log/capistrano.log', color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is [ ]
set :linked_files, fetch(:linked_files, [ ]).push('config/database.yml', 'config/secrets.yml')

# Default value for linked_dirs is [ ]
set :linked_dirs, fetch(:linked_dirs, [ ]).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system')

# Default value for default_env is { }
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
set :keep_releases, 5
