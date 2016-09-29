class DocumentsController < ApplicationController
  def index
    @documents = Document.all
  end

  def new
    @document = Document.new
  end

  def create
    @document = Document.create(contract_type: params[:contract_type],
                                image: params[:image],
                                user_id: params[:user_id]
                                )
    render 'new.html.erb'
  end

  def show
    @document = Document.all.sample
  end

  def edit
    @document = Document.find(params[:id])
  end

  def update
      @document = Document.find(params[:id])
      @document.update(contract_type: params[:contract_type],
                      image: params[:image],
                      user_id: params[:user_id]
                      )

      flash[:success] = "Your data has been updated."
      redirect_to "/documents/#{@document.id}"  
  end

  def destroy
    @document = Document.find(params[:id])
    @document.destroy
    
    flash[:warning] = "And...your data...she gone...bai bai."
    redirect_to '/documents' 
  end
end
