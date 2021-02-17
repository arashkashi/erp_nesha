# Rails Ansible

Note: This Ansible script is for Ubuntu 20.04 LTS server.
This Ansible script will setup a server with the following components

1. Ruby
2. Nginx web server
3. Passenger app server
4. PostgreSQL
5. Sidekiq (Optional)


# How to use this?

## Install pip
'''
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py --user
python -m pip install --user ansible
'''
## Install Ansible using pip.
## Create Server with SSH key attached
## server-provision.yml remains untouched
## server-env.yml  remains untouched
## Edit vars.yml
Edit '''ruby_version'''
Edit '''app_name''' , make sure the name is the same as the github repo name
Assuming we use SQLite no need to change the rest.
## Edit envs.yml
Edit RAILS_MASTER_KEY from '''app/config/master.key'''
in '''master.key''' file in config folder.
Edit SECRET_KEY_BASE after running '''EDITOR=vim rails credentials:edit'''
What is does, on server, '''/etc/environment''' will set these variables
## Edit host.ini
update the ip number
## Execute the provisioning command
'''ansible-playbook server-provision.yml'''
## Execute the variable env command
'''ansible-playbook server-env.yml'''
## Prepare the rails app for deployment
1. update GEM file
'''
gem 'capistrano', '~> 3.14'
gem 'capistrano-rails', '~> 1.6'
gem 'capistrano-rails-console', require: false
gem 'capistrano-passenger'
gem 'capistrano-rbenv'
gem 'ed25519', '~> 1.2'
gem 'bcrypt_pbkdf', '~> 1'
'''
2. then install
'''bundle install'''
3. Create all the STAGES of development
'''cap install STAGES=qa,staging,production'''
4. Edit '''config/deploy.rb'''
4.1. update application name line #5
4.2. update the repository line #8
4.3. correct the ruby version line #23
4.4. default branch is :main NOT master the script does it automatically no need tochange line#27
## update '''deploy.rb'''
make sure the '''set''' deploy_to folder is ~/{github_repo_name}
## update '''config/deploy/production.rb'''
update the ip address and change to deply user

'''server '1.2.3.4', user: fetch(:user), roles: %w{app db web}'''

## Finally '''cap production deploy'''


Make sure github has the public key of deploy.

Make sure /etc/nginx/sites-enabled/erp_nesha has passenger_user deploy; set

run the bundle install

remove this cach rm '''-rf /home/deploy/erp_nesha/releases/20210215183847/tmp/cache/bootsnap-compile-cache'''

make sure the deploy production sqlite is out of cap folder to not be left behind

run bundle exec rails db:migrate manually 

rails assets:precompile RAILS_ENV=production

get the secret
RAILS_ENV=development rake secret 

## Experiment
use the server provision yaml
used create user
Error: Could not find rake-13.0.3 in any of the sources ->tried on deploy: bundle install --path vendor/cache -> found out -> *passenger-config restart-app* we could also do ''' bundle install --path ~ ''' for deploy user to have the bundle in a shared folder not to install all gems with each release
Error: Missing `secret_key_base` for 'production' environment -> to fix: in '''vim /etc/environment''' and add '''RAILS_ENV=production''' and then execute '''source /etc/environment'''

maybe we have to set the envirnment '''rails credentials:edit --environment production'''
it creates a master key the is in git ignore and also a secret_base_key which could be retriev from rails secret. maybe this is the process to be done on server

try to set the variabls in the profile of the system "auto exec bac"
create config/secrets/yml
'''
development:
  secret_key_base: 45d07cfd3126c14dc8abf974c10022546b1a1d23c16485239ef1a09a299423d4e92968b3e7fd14f32177be066facdcea7d78ca54d22c394bf552ea15292262aa

test:
  secret_key_base: 1358fac7a48981852033f4d7a54c21a34272f92ca1ff35b7022de9131a1e13f5dde61b85fa439d9abfc53ba1a836e805be833b36fe0af6486641fd5a9cb69302

production:
  secret_key_base: <%= ENV["SECRET_KEY_BASE"] %>
'''

you may not need to add secrets.yml but add in the config to read the secret from the ENV variables
so in '''config/envirnment/production'''

'''
Rails.application.configure do
    ...
    config.secret_key_base = ENV["SECRET_KEY_BASE"]
    ...
end
'''

you could also set a global ENV variable via editing
'''sudo vi /etc/profile.d/http_proxy.sh'''
e.g.
'''
export SECRET_KEY_BASE=b7085e52e29a38
'''


command '''rails secret'' generates a rails secret key











# References:
To learn how to use this script, refer to this post : [https://rubyyagi.com/rails-deploy-automate-ansible/](https://rubyyagi.com/rails-deploy-automate-ansible/)