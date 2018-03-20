require_relative "../spec_helper"
require_relative "../helpers/config"

include BigTednewshubMoscollectorAutomationApi::Services

RSpec.describe "Bsd newshub Acceptance testing return 500" do

	context 'moscache controller' do		
		it 'can create roID' do
			$roId = "NEWSHUB_API_Test_Running_order_ID"
			response = moscachecollector_controller.set_moscachecollector_controller(request: 'roId')
			expect(response.code).to eql 500
		end
	end
	
end
