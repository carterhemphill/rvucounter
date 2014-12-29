require 'rails_helper'

describe ChargesController do

  def valid_attributes
    attributes_for(:charge)
  end


  describe "#create" do
    describe "with valid params" do
      it "creates a show Charge" do
        expect {
          post :create, { charge: valid_attributes }
        }.to change(Charge, :count).by(1)
      end
    end
  end

end