class Setting < ApplicationRecord

  def self.firstname
    Setting.find_by(name: "firstname").value
  end

  def self.lastname
    Setting.find_by(name: "lastname").value
  end

  def self.title
    Setting.find_by(name: "title").value
  end

  def self.footer_apropos
    Setting.find_by(name: "footer_apropos").value
  end

end
