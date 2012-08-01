class User < ActiveRecord::Base

  has_many :papers
  
  def self.authenticate(name, password)
    if user = find_by_name(name)
      if user.password == password
        user
      end
    end
  end
end
