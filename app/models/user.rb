class User < ActiveRecord::Base

  def self.from_omniauth(auth)
    #find_by_uid_and_provider(auth["uid"], auth["provider"]) || create_from_omniauth(auth)
    where(auth.slice(:uid, :provider)).first_or_initialize.tap do |user|
      user.uid = auth["uid"]
      user.provider = auth["provider"]
      user.name = auth["info"]["name"]
      user.save!
    end
  end

  def self.create_from_omniauth(auth)
    #create! do |user|
    #  user.uid = auth["uid"]
    #  user.provider = auth["provider"]
    #  user.name = auth["info"]["name"]
    #end
  end

end
