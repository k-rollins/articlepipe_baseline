== README

Setting up the baseline app (on a Mac)

0. "Install Ruby and RVM":http://www.interworks.com/blogs/ckaukis/2013/03/05/installing-ruby-200-rvm-and-homebrew-mac-os-x-108-mountain-lion (As of this writing it is version 2.1.5 see the .rvmrc file for the correct version)

0a. Create the gemset (you can type this command anywhere in the system) on the command line.
rvm 2.1.5
rvm gemset create article_pipe

0b. Run "bundle install" on the command line (inside the article_pipe_baseline directory)

0c. Run "rake db:schema:load" and "rake db:migrate"
   

1. Create a Gmail account and configure mail with Gmail credentials

Copy config/initializers/secret_params.rb.sample to secret_params.rb and fill in the missing <fields>.
 
Note: the rest of the Rails.applicationconfigure code is in the config/environments directory.

>  Rails.application.configure do
>     #set <server> to be a domain name: 'example.com' or 'localhost'
>	 #set <port> to be a port number: 80 is default, Webrick uses 3000
>	 config.action_mailer.default_url_options = { :host => '<server>:<port>', :protocol => 'http'}
>     #set <username> and <password>
>	 #set <my domain>, e.g. 'www.example.com' or 'localhost'
>	 config.action_mailer.smtp_settings = {
>	    :address   => "smtp.gmail.com",
>	    :port      => 587, # ports 587 and 2525 are also supported with STARTTLS
>	    :enable_starttls_auto => true, # detects and uses STARTTLS
>	    :user_name => "<my gmail username>,
>	    :password  => "<my gmail password>", # SMTP password is any valid API key
>	    :authentication => 'plain', # Mandrill supports 'plain' or 'login'
>	    :domain => '<my domain>', # your domain to identify your server when connecting
>	  }
>	 config.action_mailer.perform_deliveries = true
>  end
 
 
Note, I have prevented Git from tracking this file by adding it to the .gitignore file.
  
2. Copy config/initializers/devise.rb.sample to devise.rb

2a. Generate new key for devise: 
  rake secret
   
3. Copy config/initializers/secrets.yml.sample to secrets.yml

3a. Generate new key for Rails: 
  rake secret

4. Add Site-Level configuration data in module MySite: config/initializers/my_site.rb
 