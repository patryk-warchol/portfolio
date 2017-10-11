namespace :setup do

  desc "Setup all"
  task :all => :environment do 
    Rake::Task["setup:remove:admin"].invoke
    Rake::Task["setup:create:admin"].invoke
  end

  namespace :create do

    # setup:create:admin
    desc "Create admin account"
    task :admin => :environment do
      admin = Admin.create(login: "admin", password: "password", password_confirmation: "password")
      puts "Created admin account with login #{admin.login.to_s} and password_digest #{admin.password_digest.to_s}"
    end
      
  end

  namespace :remove do

    # setup:remove:admin
    desc "Remove admin account"
    task :admin => :environment do
      Admin.delete_all
      puts "Removed admins"
    end

  end
    
end
