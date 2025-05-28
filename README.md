# README

* Ruby version -  3.0.3

* Rails version -  7.1.5.1

Followed tutorial at https://sdrmike.medium.com/rails-7-api-only-app-with-devise-and-jwt-for-authentication-1397211fb97c
to set up JWT. In the section Set up devise-jwt the command 'EDITOR='code --wait' rails credentials:edit' did not work. It
just saved the credentials file immediately without opening it in the editor. I needed to include 'code' (i.e VSCode) in 
the command path. To do this, in VSCode go to View, Command Pallet, then enter 'Shell Command: Install 'code' in path' 
and click. The 'EDITOR='code --wait' rails credentials:edit' command should then work and an editable version of the credentials.yml file should open in VSCode