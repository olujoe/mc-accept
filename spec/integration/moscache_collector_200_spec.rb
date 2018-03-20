require_relative "../spec_helper"
require_relative "../helpers/config"

include BigTednewshubMoscollectorAutomationApi::Services

RSpec.describe "Bsd newshub Acceptance testing return 200" do
	context 'moscache controller' do		

		  it 'can add response' do
	        response = moscachecollector_controller.set_moscachecollector_controller(request: 'add',
	         payload: @config['add_200'])     
		    expect(response.code).to eql 200
		  end

		  #it 'can deleteall' do
		  #  response = moscachecollector_controller.set_moscachecollector_controller(request: 'deleteall')
		  #  expect(response.code).to eql 200
		  #end

		  it 'can view all' do
	        response = moscachecollector_controller.set_moscachecollector_controller(request: 'all')
	        expect(response.code).to eql 200
		  end

		  it 'can view details' do
		    response = moscachecollector_controller.set_moscachecollector_controller(request: 'details')
		    expect(response.code).to eql 200
		  end

		  it 'can init job' do
		    response = moscachecollector_controller.set_moscachecollector_controller(request: 'init')
		    expect(response.code).to eql 200
		  end

		  #it 'can delete roID' do
		  #  response = moscachecollector_controller.set_moscachecollector_controller(request: 'deleteroID')
		  #  expect(response.code).to eql 200
		  #end

		  it 'can create roID' do
        $roId = "NEWSHUB%20API%20Test%20Running%20order%20ID"
		    response = moscachecollector_controller.set_moscachecollector_controller(request: 'roId')
		    expect(response.code).to eql 200
		  end
	end
	
end
