*Installation instructions (on a Mac)*

1. "Install Ruby and RVM":http://www.interworks.com/blogs/ckaukis/2013/03/05/installing-ruby-200-rvm-and-homebrew-mac-os-x-108-mountain-lion (As of this writing it is version 2.1.5 see the .rvmrc file for the correct version)

2. Create the gemset (you can type this command anywhere in the system) on the command line.
    rvm 2.1.5
    rvm gemset create article_pipe

3. Run "bundle install" on the command line (inside the article_pipe_baseline directory)

4. Run "rake db:schema:load" and "rake db:migrate"
   
5. Create a Gmail account and configure mail with Gmail credentials. Copy config/initializers/secret_params.rb.sample to secret_params.rb and fill in the missing fields.
 
6. Copy config/initializers/devise.rb.sample to devise.rb

7. Generate new key for devise: 
    rake secret
   
8. Copy config/initializers/secrets.yml.sample to secrets.yml

9. Generate new key for Rails: 
    rake secret

10. Add Site-Level configuration data in module MySite: config/initializers/my_site.rb
 
