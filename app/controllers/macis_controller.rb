class MacisController < ApplicationController
  before_action :set_maci, only: [:show, :edit, :update, :destroy]

  # GET /macis
  # GET /macis.json
  def index
    @macis = Maci.all
  end

  # GET /macis/1
  # GET /macis/1.json
  def show
  end

  # GET /macis/new
  def new
    @maci = Maci.new
  end

  # GET /macis/1/edit
  def edit
  end

  # POST /macis
  # POST /macis.json
  def create
    @maci = Maci.new(maci_params)

    respond_to do |format|
      if @maci.save
        format.html { redirect_to @maci, notice: 'Maci was successfully created.' }
        format.json { render :show, status: :created, location: @maci }
      else
        format.html { render :new }
        format.json { render json: @maci.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /macis/1
  # PATCH/PUT /macis/1.json
  def update
    respond_to do |format|
      if @maci.update(maci_params)
        format.html { redirect_to @maci, notice: 'Maci was successfully updated.' }
        format.json { render :show, status: :ok, location: @maci }
      else
        format.html { render :edit }
        format.json { render json: @maci.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /macis/1
  # DELETE /macis/1.json
  def destroy
    @maci.destroy
    respond_to do |format|
      format.html { redirect_to macis_url, notice: 'Maci was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maci
      @maci = Maci.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def maci_params
      params.require(:maci).permit(:maci_name, :maci_training, :on_freq, :off_freq, :plug_number, :remote_number, :out_of_order)
    end
end
