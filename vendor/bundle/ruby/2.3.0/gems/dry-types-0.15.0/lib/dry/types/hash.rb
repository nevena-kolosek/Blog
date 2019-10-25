require 'dry/types/hash/constructor'

module Dry
  module Types
    class Hash < Nominal
      NOT_REQUIRED = { required: false }.freeze

      # @overload schmea(type_map, meta = EMPTY_HASH)
      #   @param [{Symbol => Dry::Types::Nominal}] type_map
      #   @param [Hash] meta
      #   @return [Dry::Types::Schema]
      # @overload schema(keys)
      #   @param [Array<Dry::Types::Schema::Key>] key List of schema keys
      #   @param [Hash] meta
      #   @return [Dry::Types::Schema]
      def schema(keys_or_map, meta = EMPTY_HASH)
        if keys_or_map.is_a?(::Array)
          keys = keys_or_map
        else
          keys = build_keys(keys_or_map)
        end

        Schema.new(primitive, keys: keys, **options, meta: self.meta.merge(meta))
      end

      # Build a map type
      #
      # @param [Type] key_type
      # @param [Type] value_type
      # @return [Map]
      def map(key_type, value_type)
        Map.new(
          primitive,
          key_type: resolve_type(key_type),
          value_type: resolve_type(value_type),
          meta: meta
        )
      end

      # @param [{Symbol => Nominal}] type_map
      # @return [Schema]
      def weak(*)
        raise "Support for old hash schemas was removed, please refer to the CHANGELOG "\
              "on how to proceed with the new API https://github.com/dry-rb/dry-types/blob/master/CHANGELOG.md"
      end
      alias_method :permissive, :weak
      alias_method :strict, :weak
      alias_method :strict_with_defaults, :weak
      alias_method :symbolized, :weak

      # Injects a type transformation function for building schemas
      # @param [#call,nil] proc
      # @param [#call,nil] block
      # @return [Hash]
      def with_type_transform(proc = nil, &block)
        fn = proc || block

        if fn.nil?
          raise ArgumentError, "a block or callable argument is required"
        end

        handle = Dry::Types::FnContainer.register(fn)
        with(type_transform_fn: handle)
      end

      # @api private
      def constructor_type
        ::Dry::Types::Hash::Constructor
      end

      # Whether the type transforms types of schemas created by {Dry::Types::Hash#schema}
      # @return [Boolean]
      # @api public
      def transform_types?
        !options[:type_transform_fn].nil?
      end

      # @param meta [Boolean] Whether to dump the meta to the AST
      # @return [Array] An AST representation
      def to_ast(meta: true)
        if RUBY_VERSION >= "2.5"
          opts = options.slice(:type_transform_fn)
        else
          opts = options.select { |k, _| k == :type_transform_fn }
        end

        [:hash, [opts, meta ? self.meta : EMPTY_HASH]]
      end

      private

      # @api private
      def build_keys(type_map)
        type_fn = options.fetch(:type_transform_fn, Schema::NO_TRANSFORM)
        type_transform = Dry::Types::FnContainer[type_fn]

        type_map.map do |map_key, type|
          name, options = key_name(map_key)
          key = Schema::Key.new(resolve_type(type), name, options)
          type_transform.(key)
        end
      end

      # @api private
      def resolve_type(type)
        case type
        when String, Class then Types[type]
        else type
        end
      end

      # @api private
      def key_name(key)
        if key.to_s.end_with?('?')
          [key.to_s.chop.to_sym, NOT_REQUIRED]
        else
          [key, EMPTY_HASH]
        end
      end
    end
  end
end

require 'dry/types/schema/key'
require 'dry/types/schema'
