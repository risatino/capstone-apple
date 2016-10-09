class DocumentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @documents = Document.all
  end

  def new
    @document = Document.new
  end

  def create
    @document = Document.create(contract_type: params[:contract_type],
                                image: params[:image],
                                designer: params[:designer],
                                title: params[:title],
                                due_date: params[:due_date],
                                notes: params[:notes])
    if @document.save

      flash[:success] = "Your document has been created"
      redirect_to "/documents/#{@product.id}"
    else
      render 'new.html.erb'
    end
    
  end

  def show
    @document = Document.find(params[:id])
  end

  def edit
    @document = Document.find(params[:id])
  end

  def update
    @document = Document.find(params[:id])
    @document.update(contract_type: params[:contract_type],
                    image: params[:image],
                    designer: params[:designer],
                    title: params[:title],
                    due_date: params[:due_date],
                    notes: params[:notes])

    flash[:success] = "Your data has been updated."
    redirect_to "/documents/#{@document.id}"  
  end

  def destroy
    @document = Document.find(params[:id])
    @document.destroy
    
    flash[:warning] = "Your document has been deleted."
    redirect_to '/documents' 
  end
end
