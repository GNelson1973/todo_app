require 'rails_helper'

describe TodosController do

  describe "GET #index" do
    it "assigns @todos" do
      todo = Todo.create( title: "Shopping" )

      get :index

      expect(assigns(:todos)).to eq([todo])
      expect(response).to render_template("index")
    end
  end

end
