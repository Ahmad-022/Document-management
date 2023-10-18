class DocumentsController < ApplicationController
  
  before_action :set_document, only: [:show, :update, :edit, :destroy]
    def index 
        @documents = current_user.documents.order(:position)
    end
    def new
        @document = Document.new
    end
    def edit

    end
    def create
        @document = current_user.documents.new(document_params)
        # @document.file.attach(params[:document][:image])
        respond_to do |format|
          if @document.save
            format.html{ redirect_to documents_path, notice: 'Document was successfully created'}
          else
            format.html { render :new, status: :unprocessable_entity }
          end
        end
      end
    def update
        respond_to do |format|
          if @document.update(document_params)
            format.html{ redirect_to documents_path, notice: 'document was successfully updated'}
          else
            format.html { render :new, status: :unprocessable_entity }
          end
        end
    end

  def show
  end
    def destroy
      @document.destroy
      respond_to do |format|
        format.html { redirect_to documents_path, notice: "Document has successfully Deleted." }
  
      end
    end

    def reorder
      params[:documents].each do |document_params|
        Task.find(document_params[:id]).update(position: document_params[:position])
      end
  
      head :ok
    end

    def document_params
      params.require(:document).permit(:name, :file)
    end
    def set_document
      @document = current_user.documents.find(params[:id])
      rescue ActiveRecord::RecordNotFound => error
        redirect_to documents_path, notice: error
    end
end
