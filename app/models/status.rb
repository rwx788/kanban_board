# frozen_string_literal: true

class Status < ApplicationRecord
    has_many :tickets
end
