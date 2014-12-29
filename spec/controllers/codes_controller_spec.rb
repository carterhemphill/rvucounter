require 'rails_helper'

describe CodesController do

  def valid_attributes
    attributes_for(:code)
  end

  describe "#new" do
    it "assigns a new code as @code" do
      get :new, {}
      expect(assigns(:code)).to be_a_new(Code)
    end
  end

  describe "#create" do
    describe "with valid params" do
      it "creates a new Code" do
        expect {
          post :create, { code: valid_attributes }
        }.to change(Code, :count).by(1)
      end
    end
  end

end