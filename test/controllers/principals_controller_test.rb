require 'test_helper'

class PrincipalsControllerTest < ActionDispatch::IntegrationTest
    test 'render a list of principals' do
        get principals_path

        assert_response :success
    end

    test 'render a detailed principals page' do

    end
end