require 'database_cleaner/generic/base'
require 'neo4j'

module DatabaseCleaner
  module Neo4j

    def self.available_strategies
      %w[deletion]
    end

    module Base
      include ::DatabaseCleaner::Generic::Base

    end
  end
end
