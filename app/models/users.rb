class Users < ActiveRecord::Base

  def self.check(email, password)
    user = find_by_email(email) && find_by_password(password)
  end

end
