require 'rails_helper'

describe ChargesController do

  # This should return the minimal set of attributes required to create a valid
  # Charge. As you add validations to Charge, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    attributes_for(:charge)
  end

  describe "#new" do
    it "assigns a new candidate as @candidate" do
      get :new, {}
      expect(assigns(:charge)).to be_a_new(Charge)
    end
  end

end