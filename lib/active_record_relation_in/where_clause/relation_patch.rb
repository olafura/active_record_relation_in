# frozen_string_literal: true

module ActiveRecordRelationIn
  module WhereClause
    module RelationPatch
      module RelationCombineInPatch
        def combine_with_in
          self.where_clause = where_clause.combine_with_in

          self
        end
      end
    end
  end
end

ActiveRecord::Relation.prepend(ActiveRecordRelationIn::WhereClause::RelationPatch::RelationCombineInPatch)
