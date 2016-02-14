class TorresController < ApplicationController
  before_action :set_torre, only: [:show, :edit, :update, :destroy]

  # GET /torres
  # GET /torres.json
  def index
    @torres = Torre.all
  end

  # GET /torres/1
  # GET /torres/1.json
  def show
  end

  # GET /torres/new
  def new
    @torre = Torre.new
  end

  # GET /torres/1/edit
  def edit
  end

  # POST /torres
  # POST /torres.json
  def create
    @torre = Torre.new(torre_params)

    respond_to do |format|
      if @torre.save
        format.html { redirect_to @torre, notice: 'Torre was successfully created.' }
        format.json { render :show, status: :created, location: @torre }
      else
        format.html { render :new }
        format.json { render json: @torre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /torres/1
  # PATCH/PUT /torres/1.json
  def update
    respond_to do |format|
      if @torre.update(torre_params)
        format.html { redirect_to @torre, notice: 'Torre was successfully updated.' }
        format.json { render :show, status: :ok, location: @torre }
      else
        format.html { render :edit }
        format.json { render json: @torre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /torres/1
  # DELETE /torres/1.json
  def destroy
    @torre.destroy
    respond_to do |format|
      format.html { redirect_to torres_url, notice: 'Torre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_torre
      @torre = Torre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def torre_params
      params.require(:torre).permit(:descricao, :sigla)
    end
end
