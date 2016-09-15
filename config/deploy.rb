# config valid only for Capistrano 3.1
set :application, 'devil'
set :repo_url, 'git@github.com:priya8990/devil.git'

set :rbenv_ruby, '2.2.3'
set :rbenv_path, '/home/demo/.rbenv'
set :format, :pretty

set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system public/uploads}


set :default_env, { path: "~/.rbenv/shims:~/.rbenv/bin:$PATH" }

set :keep_releases, 5

set :bundle_gemfile, -> { release_path.join('Gemfile') }
set :bundle_dir, -> { shared_path.join('bundle') }
set :bundle_flags, '--deployment --quiet'
set :bundle_without, %w{development test}.join(' ')
set :bundle_binstubs, -> { shared_path.join('bin') }
set :bundle_roles, :all
set :bundle_bins, %w(gem rake rails)
set :whenever_roles, :all