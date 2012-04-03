module Builders
  class User < Builder
    def build
      user = BusinessModel::User.build params
      user.email_addresses = [EmailAddress.new(params).build]
      user.phones = [Phone.new(params).build]
    end
  end
end
