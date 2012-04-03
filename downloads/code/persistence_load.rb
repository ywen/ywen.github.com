module Persistence
  class User
    def load
      user = ActiveRecordStore::User.new(business_object).load
      RedisStore::User.new(user).load
    end
  end
end

