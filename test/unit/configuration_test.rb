require File.expand_path('../test_helper', File.dirname(__FILE__))

class ConfigurationTest < ActiveSupport::TestCase

  def test_configuration_presense
    assert config = ComfyGallery.configuration
    assert_equal ({}),                        config.upload_options
    assert_equal 'admin',                     config.admin_route_prefix
    assert_equal 'ApplicationController',     config.admin_controller
    assert_equal 'ComfyGallery::FormBuilder', config.form_builder
  end

  def test_initialization_overrides
    ComfyGallery.configuration.admin_route_prefix = 'admin'
    assert_equal 'admin', ComfyGallery.configuration.admin_route_prefix
  end

end