module Myob
  module Essentials
    module Api
      module Model
        class InventoryItem < Base
          def model_route
            'businesses/:business_uid/inventory/items'
          end

          def find_by_name_or_number(query)
            object = { 'q' => query }
            perform_request(url(object))
          end
        end
      end
    end
  end
end
