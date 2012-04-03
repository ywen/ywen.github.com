module Persistence
  class User
    def persist
      ActiveRecordStore::User.new(business_object).save
      #save part of attributes to redis
      RedisStore::User.new(business_object).save 
    end
  end
end
