module BusinessModel
  class User
    class << self
      def build(params)
        self.new(valid_params(params)).tap do
          raise ObjectInvalidError.new(user.errors) unless user.valid?
        end
      end

      private
      def valid_params(params)
        [:id, :first_name, :last_name].inject({}) do |attributes, key|
          attributes.merge!(params[key])
        end
      end
    end
  end
end