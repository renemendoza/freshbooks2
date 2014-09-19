module FreshBooks
  class Credit < FreshBooks::Base
    
    define_schema do |s| 
#      s.fixnum :credit_id 
#      s.string :credit
#      s.string :credit, :currency
      s.string :currency
      s.float :credit
    end
  end
end            

#       <credits>  
#           <credit currency="USD">123.45</credit>  
#           <credit currency="CAD">43.45</credit>  
#           <credit currency="EUR">12.00</credit>  
#       </credits>
