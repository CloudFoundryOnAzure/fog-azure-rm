require File.expand_path '../../test_helper', __dir__

# Test class for Get Network Security Group
class TestGetNetworkSecurityGroup < Minitest::Test
  def setup
    @service = Fog::Network::AzureRM.new(credentials)
    client = @service.instance_variable_get(:@network_client)
    @network_security_groups = client.network_security_groups
    @promise = Concurrent::Promise.execute do
    end
  end

  def test_get_network_security_group_success
    mocked_response = ApiStub::Requests::Network::NetworkSecurityGroup.create_network_security_group_response
    expected_response = Azure::ARM::Network::Models::NetworkSecurityGroup.serialize_object(mocked_response.body)
    @promise.stub :value!, mocked_response do
      @network_security_groups.stub :get, @promise do
        assert_equal @service.get_network_security_group('fog-test-rg', 'fog-test-nsg'), expected_response
      end
    end
  end

  def test_get_network_security_group_failure
    response = -> { raise MsRestAzure::AzureOperationError.new(nil, nil, 'error' => { 'message' => 'mocked exception' }) }
    @promise.stub :value!, response do
      @network_security_groups.stub :get, @promise do
        assert_raises RuntimeError do
          @service.get_network_security_group('fog-test-rg', 'fog-test-nsg')
        end
      end
    end
  end
end
