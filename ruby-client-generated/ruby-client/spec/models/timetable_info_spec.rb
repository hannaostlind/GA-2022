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

# Unit tests for SwaggerClient::TimetableInfo
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TimetableInfo' do
  before do
    # run before each test
    @instance = SwaggerClient::TimetableInfo.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TimetableInfo' do
    it 'should create an instance of TimetableInfo' do
      expect(@instance).to be_instance_of(SwaggerClient::TimetableInfo)
    end
  end
  describe 'test attribute "time_table_data"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "time_table_period"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
