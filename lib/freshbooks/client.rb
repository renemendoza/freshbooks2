module FreshBooks
  class Client < FreshBooks::Base
    define_schema do |s|
      s.string :first_name, :last_name, :organization, :email
      s.string :username, :password, :work_phone, :home_phone
      s.string :mobile, :fax, :language, :currency_code, :notes, :p_street1, :p_street2, :p_city
      s.string :p_state, :p_country, :p_code, :s_street1, :s_street2
      s.string :s_city, :s_state, :s_country, :s_code
      # NOTE 11-15-10: credit is deprecated
      s.float :credit#, :read_only => true
      s.array :credits#, :read_only => true
      s.date_time :updated, :read_only => true
      s.fixnum :client_id
      s.object :links, :read_only => true
      s.string :vat_name, :vat_number
      s.string :folder
    end

    actions :list, :get, :create, :update, :delete

    def invoices(options = {})
      options.merge!('client_id' => self.client_id)
      Invoice::list(options)
    end
  end
end
