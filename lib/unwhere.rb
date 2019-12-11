require "unwhere/railtie"

module Unwhere
end

module ActiveRecord
  class Relation
    class WhereClause # :nodoc:
      delegate :clear, to: :predicates
    end
  end
end

module ActiveRecord
  module QueryMethods
    # Returns a relation, without all where conditions
    #
    #    Post.where("id = 1").unwhere
    #    # SELECT `posts`.* FROM `posts`
    #    Post.where("id = 1").unwhere.where(trashed: false)
    #    # SELECT `posts`.* FROM `posts` WHERE `trashed` = 0
    #
    def unwhere
      self.where_clause.clear
      self
    end
  end
end
