namespace :setup do

  desc "Setup all"
  task :all => :environment do 
    Rake::Task["setup:remove:admin"].invoke
    Rake::Task["setup:remove:links"].invoke
    Rake::Task["setup:create:admin"].invoke
    Rake::Task["setup:create:links"].invoke
  end

  namespace :create do

    # setup:create:admin
    desc "Create admin account"
    task :admin => :environment do
      admin = Admin.create(login: "admin", password: "password", password_confirmation: "password")
      puts "Created admin account with login #{admin.login.to_s} and password_digest #{admin.password_digest.to_s}"
    end

    # setup:create:links
    desc "Create default links"
    task :links => :environment do 
      github = Link.create(
        name: "Github",
        fa_icon_name: "fa-github",
        color: "#444444",
        size: "3",
        link: "",
        footer_visible: true
      )
      linkedin = Link.create(
        name: "LinkedIn",
        fa_icon_name: "fa-linkedin-square",
        color: "#367BB1",
        size: "3",
        link: "",
        footer_visible: true
      )
      contact = Link.create(
        name: "Contact me",
        fa_icon_name: "fa-envelope-square",
        color: "#D56354",
        size: "3",
        link: "",
        footer_visible: true
      )
    end
      
  end

  namespace :remove do

    # setup:remove:admin
    desc "Remove admin account"
    task :admin => :environment do
      Admin.delete_all
      puts "Removed admins"
    end

    # setup:remove:links
    desc "Remove links"
    task :links => :environment do
      Link.delete_all
      puts "Removed links"
    end

  end
    
end
