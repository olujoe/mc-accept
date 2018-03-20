require_relative "../spec_helper"

include BigTednewshubMoscollectorAutomationApi::Services

RSpec.describe "Bsd newshub Acceptance testing return 400" do
	
	context 'mos controller' do

		  it 'can view heartbeat mos collector' do
		    response = moscollector_controller.set_moscollector_controller(request: 'heartbeat', 
		    	query: {messageID: "string"})
		    expect(response.code).to eql 400
		  end				

		  it 'can view roReq mos collector' do
		    response = moscollector_controller.set_moscollector_controller(request: 'roReq', 
		    	query: {roID: "NEWSHUB API Test Running order ID", messageID: "string"})
		    expect(response.code).to eql 400
		  end				

		  it 'can view roReqAll mos collector' do
		    response = moscollector_controller.set_moscollector_controller(request: 'roReqAll', 
		    	query: {messageID: "string"})
		    expect(response.code).to eql 400
		  end				

	end		

end
