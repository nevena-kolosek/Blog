require 'dry/types/coercions/json'

module Dry
  module Types
    register('json.nil') do
      self['nominal.nil'].constructor(Coercions::JSON.method(:to_nil))
    end

    register('json.date') do
      self['nominal.date'].constructor(Coercions::JSON.method(:to_date))
    end

    register('json.date_time') do
      self['nominal.date_time'].constructor(Coercions::JSON.method(:to_date_time))
    end

    register('json.time') do
      self['nominal.time'].constructor(Coercions::JSON.method(:to_time))
    end

    register('json.decimal') do
      self['nominal.decimal'].constructor(Coercions::JSON.method(:to_decimal))
    end

    register('json.array') do
      self['nominal.array'].safe
    end

    register('json.hash') do
      self['nominal.hash'].safe
    end
  end
end
