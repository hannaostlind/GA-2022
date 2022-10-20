=begin
#Reseplaneraren

#Provides access to Västtrafik journey planner

OpenAPI spec version: 1.10.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.28

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::Note
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Note' do
  before do
    # run before each test
    @instance = SwaggerClient::Note.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Note' do
    it 'should create an instance of Note' do
      expect(@instance).to be_instance_of(SwaggerClient::Note)
    end
  end
  describe 'test attribute "priority"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "severity"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["high", "normal", "low"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.severity = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "key"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
