# frozen_string_literal: true

require_relative "active_record_relation_in/version"

require "active_record"

module ActiveRecordRelationIn
  extend ActiveSupport::Autoload

  AR_VERSION_GTE_6_1 = Gem::Requirement.new(">= 6.1").satisfied_by?(ActiveRecord.gem_version)

  module WhereClause
    extend ActiveSupport::Autoload

    eager_autoload do
      autoload :RelationPatch
      autoload :WhereClausePatch
      autoload :CombineWithInRelation
    end
  end

  def self.eager_load!
    super
    ActiveRecordRelationIn::WhereClause.eager_load!
  end
end

ActiveSupport.on_load(:active_record) do
  ActiveRecordRelationIn.eager_load!
end
