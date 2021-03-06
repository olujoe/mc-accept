require_relative "../spec_helper"
require_relative "../helpers/config"

include BigTednewshubMoscollectorAutomationApi::Services

RSpec.describe "Bsd newshub Acceptance testing return 200 test Data 1" do
	context 'moscache controller' do		

		it 'can add response1' do
	    	response = moscachecollector_controller.set_moscachecollector_controller(request: 'add', payload: @config['add_200'])
		    expect(response.code).to eql 200
		end

		it 'can add response2' do
	        response = moscachecollector_controller.set_moscachecollector_controller(request: 'add', payload: @config['add_400'].to_json)     
			expect(response.code).to eql 400
		end

	end
	
end
