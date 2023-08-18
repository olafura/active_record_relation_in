# frozen_string_literal: true

require_relative "active_record_relation_in/version"

module ActiveRecordRelationIn
  class Error < StandardError; end

  module Patch
    extend ActiveSupport::Autoload

    eager_autoload do
      autoload :RelationPatch
    end
  end
end
