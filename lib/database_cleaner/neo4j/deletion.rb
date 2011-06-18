require "database_cleaner/generic/truncation"
require 'database_cleaner/neo4j/base'
require 'fileutils'

module DatabaseCleaner::Neo4j
  class Deletion
    include ::DatabaseCleaner::Neo4j::Base

    def clean
      db_path = db.storage_path
      
      ::Neo4j.shutdown

      if File.exists? db_path
        FileUtils.rm_rf db_path
      end
      
      ::Neo4j.start
    end

    def db
      @db ||= ::Neo4j.db
    end

    private
  end
end


