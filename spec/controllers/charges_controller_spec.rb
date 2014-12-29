require 'rails_helper'

describe ChargesController do

  def valid_attributes
    attributes_for(:charge)
  end

  describe "#new" do
    it "assigns a new charge as @charge" do
      get :new, {}
      expect(assigns(:charge)).to be_a_new(Charge)
    end
  end

  describe "#create" do
    describe "with valid params" do
      it "creates a new Charge" do
        expect {
          post :create, { charge: valid_attributes }
        }.to change(Charge, :count).by(1)
      end
    end
  end

end