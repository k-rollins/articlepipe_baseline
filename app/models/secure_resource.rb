  SecureResource = Struct.new(:secret1, :secret2,:user_id) do
    def reveal
      "#{secret1} and #{secret2}"
    end
  end

