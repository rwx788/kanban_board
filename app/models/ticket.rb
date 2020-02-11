class Ticket < ApplicationRecord
    belongs_to :status
    # Always sort by order and preserve it
    default_scope { order(order_nr: :asc) }
end
