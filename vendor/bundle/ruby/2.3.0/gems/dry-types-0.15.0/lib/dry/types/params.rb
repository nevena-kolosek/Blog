require 'dry/types/coercions/params'

module Dry
  module Types
    register('params.nil') do
      self['nominal.nil'].constructor(Coercions::Params.method(:to_nil))
    end

    register('params.date') do
      self['nominal.date'].constructor(Coercions::Params.method(:to_date))
    end

    register('params.date_time') do
      self['nominal.date_time'].constructor(Coercions::Params.method(:to_date_time))
    end

    register('params.time') do
      self['nominal.time'].constructor(Coercions::Params.method(:to_time))
    end

    register('params.true') do
      self['nominal.true'].constructor(Coercions::Params.method(:to_true))
    end

    register('params.false') do
      self['nominal.false'].constructor(Coercions::Params.method(:to_false))
    end

    register('params.bool') do
      (self['params.true'] | self['params.false']).safe
    end

    register('params.integer') do
      self['nominal.integer'].constructor(Coercions::Params.method(:to_int))
    end

    register('params.float') do
      self['nominal.float'].constructor(Coercions::Params.method(:to_float))
    end

    register('params.decimal') do
      self['nominal.decimal'].constructor(Coercions::Params.method(:to_decimal))
    end

    register('params.array') do
      self['nominal.array'].constructor(Coercions::Params.method(:to_ary)).safe
    end

    register('params.hash') do
      self['nominal.hash'].constructor(Coercions::Params.method(:to_hash)).safe
    end
  end
end
