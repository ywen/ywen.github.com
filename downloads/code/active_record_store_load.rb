module ActiveRecordStore
  class User < Store
    def load
      non_empty_attributes = HashHelper.new(physical_attributes).non_blanks
      Physical::User.all(non_empty_attributes)
    end
  end
end
