# executer avec rails test:integration
require "test_helper"
class RoutesTest < ActionDispatch::IntegrationTest
  test 'API routes version 1 (v1)' do

    # assert_generates '/v1',
    # {
    #   controller: '/api/v1/fournisseurs',
    #   action: 'index'
    # }

    assert_generates '/v1/auth_user',
    {
      controller: '/api/v1/authentication',
      action: 'authenticate_user'
    }

    assert_generates '/v1/fournisseurs',
    {
      controller: '/api/v1/fournisseurs',
      action: 'index'
    }

    assert_generates '/v1/fournisseurs/1/produits',
    {
      controller: '/api/v1/produits',
      action: 'index',
      fournisseur_id: 1
    }
  end
end
