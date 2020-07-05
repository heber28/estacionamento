class MensalistaController < ApplicationController
  before_action :set_mensalistum, only: [:show, :edit, :update, :destroy]

  # GET /mensalista
  # GET /mensalista.json
  def index
    @mensalista = Mensalistum.all
  end

  # GET /mensalista/1
  # GET /mensalista/1.json
  def show
  end

  # GET /mensalista/new
  def new
    @mensalistum = Mensalistum.new
  end

  # GET /mensalista/1/edit
  def edit
  end

  # POST /mensalista
  # POST /mensalista.json
  def create
    @mensalistum = Mensalistum.new(mensalistum_params)

    respond_to do |format|
      if @mensalistum.save
        format.html { redirect_to @mensalistum, notice: 'Mensalistum was successfully created.' }
        format.json { render :show, status: :created, location: @mensalistum }
      else
        format.html { render :new }
        format.json { render json: @mensalistum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mensalista/1
  # PATCH/PUT /mensalista/1.json
  def update
    respond_to do |format|
      if @mensalistum.update(mensalistum_params)
        format.html { redirect_to @mensalistum, notice: 'Mensalistum was successfully updated.' }
        format.json { render :show, status: :ok, location: @mensalistum }
      else
        format.html { render :edit }
        format.json { render json: @mensalistum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mensalista/1
  # DELETE /mensalista/1.json
  def destroy
    @mensalistum.destroy
    respond_to do |format|
      format.html { redirect_to mensalista_url, notice: 'Mensalistum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mensalistum
      @mensalistum = Mensalistum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mensalistum_params
      params.require(:mensalistum).permit(:nome, :telefone)
    end
end
