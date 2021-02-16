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










# References:
To learn how to use this script, refer to this post : [https://rubyyagi.com/rails-deploy-automate-ansible/](https://rubyyagi.com/rails-deploy-automate-ansible/)