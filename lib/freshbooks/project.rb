module FreshBooks
  class Project < FreshBooks::Base
    define_schema do |s|
      s.string :name, :bill_method, :description
      s.fixnum :project_id, :client_id
      s.float :rate
      s.array :tasks
    end
    
    actions :list, :get, :create, :update, :delete
  end
end

# NOTE 11-15-10 I believe this is out of date but we're not using it anyhow 
# http://developers.freshbooks.com/api/view/projects/ differs on the attributes for create vs get
