class Ticket < ApplicationRecord
    belongs_to :status
    # Always sort by order and preserve it
    default_scope { order(position: :asc) }
    acts_as_list scope: :todo_list
end
