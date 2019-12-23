class Microposts1sController < ApplicationController
  before_action :set_microposts1, only: [:show, :edit, :update, :destroy]

  # GET /microposts1s
  # GET /microposts1s.json
  def index
    @microposts1s = Microposts1.all
  end

  # GET /microposts1s/1
  # GET /microposts1s/1.json
  def show
  end

  # GET /microposts1s/new
  def new
    @microposts1 = Microposts1.new
  end

  # GET /microposts1s/1/edit
  def edit
  end

  # POST /microposts1s
  # POST /microposts1s.json
  def create
    @microposts1 = Microposts1.new(microposts1_params)

    respond_to do |format|
      if @microposts1.save
        format.html { redirect_to @microposts1, notice: 'Microposts1 was successfully created.' }
        format.json { render :show, status: :created, location: @microposts1 }
      else
        format.html { render :new }
        format.json { render json: @microposts1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /microposts1s/1
  # PATCH/PUT /microposts1s/1.json
  def update
    respond_to do |format|
      if @microposts1.update(microposts1_params)
        format.html { redirect_to @microposts1, notice: 'Microposts1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @microposts1 }
      else
        format.html { render :edit }
        format.json { render json: @microposts1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microposts1s/1
  # DELETE /microposts1s/1.json
  def destroy
    @microposts1.destroy
    respond_to do |format|
      format.html { redirect_to microposts1s_url, notice: 'Microposts1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_microposts1
      @microposts1 = Microposts1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def microposts1_params
      params.require(:microposts1).permit(:content, :user_id)
    end
end
