# frozen_string_literal: true

require_relative "active_record_relation_in/version"

require "active_record"
require "active_record/relation"

module ActiveRecordRelationIn
  extend ActiveSupport::Autoload

  class Error < StandardError; end

  module Patch
    extend ActiveSupport::Autoload

    eager_autoload do
      autoload :RelationPatch
    end
  end
  
  def self.eager_load!
    super
    ActiveRecordRelationIn::Patch.eager_load!
  end
end

ActiveSupport.on_load(:active_record) do
  require 'active_record_relation_in/relation'
  ActiveRecordRelationIn.eager_load!
end
