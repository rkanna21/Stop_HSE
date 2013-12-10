require 'spec_helper'

describe CategoriesController do

  let(:valid_attributes) { attributes_for(:category) }
#  binding.pry
  let(:category) { create(:category) } 

  

  describe "GET index" do
      it "assigns all categories as @category" do
        get :index
        expect(assigns(:category)).to eq([category])
      end
    end

  describe "GET show" do
      it "assigns the requested category as @category" do
        get :show, {:id => category.to_param}
        expect(assigns(:category)).to eq(category)
      end
    end

  describe "GET new" do
    it "assigns a category as @category" do
      get :new, {}
      expect(assigns(:category)).to be_a_new(Category)
    end
  end

  describe "GET edit" do
    it "assigns the requested category as @category" do
      category = Category.create! valid_attributes
      get :edit, {:id => category.to_param}
      assigns(:category).should eq(category)
    end
  end

  describe "POST create" do
    describe "with invalid params" do
      it "assigns a newly created but unsaved category as @category" do
        Category.any_instance.stub(:save).and_return(false)
        post :create, {:category => { "title" => "invalid value" }}
        assigns(:category).should be_a_new(Category)
      end

      it "re-renders the 'new' template" do
        Category.any_instance.stub(:save).and_return(false)
        post :create, {:category => { "title" => "invalid value" }}
        response.should render_template("new")
      end
    end

    describe "with valid params" do

      it "creates a new Category" do
        expect {
          post :create, {
            :category => valid_attributes
            }
        }.to change(Category, :count).by(1)

      end


      it "assigns a newly created category as @category" do
        post :create, {:category => valid_attributes}
        assigns(:category).should be_a(Category)
        assigns(:category).should be_persisted
      end

      it "redirects to the created category" do
        post :create, {:category => valid_attributes}
        response.should redirect_to(Category.last)
      end
    end


  end


 
end
