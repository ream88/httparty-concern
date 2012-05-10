$:.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'minitest/autorun'
require 'minitest/spec'
require 'purdytest'
require 'httparty-concern'

describe HTTParty do
  it 'extends `ActiveSupport::Concern`' do
    HTTParty.singleton_class.included_modules.must_include(ActiveSupport::Concern)
  end


  it 'responds to `included`' do
    HTTParty.must_respond_to(:included)
  end


  it 'responds to `append_features`' do
    HTTParty.must_respond_to(:append_features)
  end
end
