module Builders
  class User < Builder
    def build
      BusinessModel::User.build(params).tap do |business_object|
        business_object.email_addresses = [EmailAddress.new(params).build]
        business_object.phones = [Phone.new(params).build]
        business_object.address = Address.new(params).build
      end
    end
  end
end
