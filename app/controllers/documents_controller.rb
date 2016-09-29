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
    
  end
end
