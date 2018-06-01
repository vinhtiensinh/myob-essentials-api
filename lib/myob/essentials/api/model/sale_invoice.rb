module Myob
  module Essentials
    module Api
      module Model
        class SaleInvoice < Base
          def model_route
            'businesses/:business_uid/sale/invoices'
          end

          def find_by_invoice_number(invoice_number)
            object = { 'invoiceNumber' => invoice_number }
            perform_request(url(object))
          end
        end
      end
    end
  end
end
