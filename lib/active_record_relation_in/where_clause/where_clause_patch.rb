# frozen_string_literal: true

module ActiveRecordRelationIn
  module WhereClause
    module WhereClausePatch
      def combine_with_in
        ActiveRecordRelationIn::WhereClause::CombineWithInRelation.new(@predicates)
      end
    end
  end
end

ActiveRecord::Relation::WhereClause.prepend(ActiveRecordRelationIn::WhereClause::WhereClausePatch)
