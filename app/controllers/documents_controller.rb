class DocumentsController < ApplicationController
    def index 
        @documents = Document.all
    end
    def new
        @document = Document.new
    end
    def edit
      @document = Document.find(params[:id])
    end
    def create
        @document = Document.new(document_params)
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
      @document= Document.find(params[:id])
        respond_to do |format|
          if @document.update(document_params)
            format.html{ redirect_to documents_path, notice: 'User was successfully created'}
          else
            format.html { render :new, status: :unprocessable_entity }
          end
        end
    end

  def show
    @document= Document.find(params[:id])
  end
    def destroy
      @document=Document.find(params[:id])
      @document.destroy
      respond_to do |format|
        format.html { redirect_to documents_path, notice: "Doctor has successfully Deleted." }
  
      end
    end



    def document_params
      params.require(:document).permit(:name, :file)
    end
end
