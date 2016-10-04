class User < ActiveRecord::Base
    def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      if auth['info']
         user.name = auth['info']['first_name'] + " " + auth['info']['last_name'] || ""
      end
    end
  end
end
