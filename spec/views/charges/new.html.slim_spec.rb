require 'rails_helper'

describe "charges/new" do
  before(:each) do
    assign(:charge, build_stubbed(:charge))
  end

  it "renders new charge form" do
    render

    assert_select "form", action: charges_path, method: "post" do
      assert_select "input#charge_pan",       name: "charge[pan]"
      assert_select "select#charge_code",   name: "charge[code]"
    end
  end
end
