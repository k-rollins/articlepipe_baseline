# Installation instructions (on a Mac)

1. [Install Ruby and RVM][1] (As of this writing it is version 2.1.5 see the .rvmrc file for the correct version)
2.  Create the gemset by entering these two commands on the command line.

        rvm 2.1.5
        rvm gemset create article_pipe

3. Run `bundle install` on the command line (inside the article_pipe_baseline directory)
4. Run `rake db:schema:load` and `rake db:migrate`
5. Create a Gmail account. Copy config/initializers/secret_params.rb.sample to secret_params.rb and fill in the missing fields with Gmail credentials.
6. Copy config/initializers/devise.rb.sample to devise.rb
7.  Generate new key for devise and enter it in devise.rb.

        rake secret

<<<<<<< HEAD
7. Generate new key for devise and enter it in devise.rb.
    rake secret   
=======
>>>>>>> readme_2
8. Copy config/initializers/secrets.yml.sample to secrets.yml
9.  Generate new key for Rails in secrets.yml:

        rake secret

10. Add Site-Level configuration data in module MySite: config/initializers/my_site.rb

[1]: http://www.interworks.com/blogs/ckaukis/2013/03/05/installing-ruby-200-rvm-and-homebrew-mac-os-x-108-mountain-lion
