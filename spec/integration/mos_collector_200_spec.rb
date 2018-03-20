require_relative "../spec_helper"

include BigTednewshubMoscollectorAutomationApi::Services

RSpec.describe "Bsd newshub Acceptance testing return 200" do
	context 'mos controller' do

		  it 'can view heartbeat mos collector' do
		    response = moscollector_controller.set_moscollector_controller(request: 'heartbeat')
		    expect(response.code).to eql 200
		  end				

		  it 'can view roReq mos collector' do
		    response = moscollector_controller.set_moscollector_controller(request: 'roReq', 
		    	query: {roID: "OPENMEDIA_NCS.INTEGTEST.W1.BBC.MOS;OM_4.1606858"})
		    expect(response.code).to eql 200
		  end				

		  it 'can view QA ENPS roReq mos collector' do
		    response = moscollector_controller.set_moscollector_controller(request: 'roReq', 
		    	query: {roID: "NEWLBHENPS10;P_BH10TVOP\\W;23161BEC-81C1-4934-A34714D2D1CA483F"})
		    expect(response.code).to eql 200
		  end				
=begin
		  it 'can view roReqAll mos collector' do
		    response = moscollector_controller.set_moscollector_controller(request: 'roReqAll')
		    expect(response.code).to eql 200
		  end				
=end

	end	

end
