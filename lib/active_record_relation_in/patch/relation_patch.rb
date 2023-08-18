module ActiveRecordRelationIn
  module Patch
    module RelationPatch
      def relation_in
        # attr_reader :table, :klass, :loaded, :predicate_builder
        # def initialize(klass, table: klass.arel_table, predicate_builder: klass.predicate_builder, values: {})
        #   @klass  = klass
        #   @table  = table
        #   @values = values
        #   @loaded = false
        #   @predicate_builder = predicate_builder
        #   @delegate_to_klass = false
        #   @future_result = nil
        #   @records = nil
        # end
        ActiveRecordRelationIn::Relation.new(@klass, table: @table, predicate_builder: @predicate_builder, values: @values)
      end
    end
  end
end
ActiveRecord::Relation.prepend(ActiveRecordRelationIn::Patch::RelationPatch)
