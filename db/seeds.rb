# frozen_string_literal: true

# Load seeds directly in seeds directory and any nested directory
Dir[File.join(Rails.root, 'db', 'seeds/**/*.rb')].sort.each { |seed| load seed }
