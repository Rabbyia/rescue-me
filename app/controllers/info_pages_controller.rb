class InfoPagesController < ApplicationController
  before_action :set_info_page, only: [:show, :edit, :update, :destroy]

  # GET /info_pages
  # GET /info_pages.json
  def index
    @info_pages = InfoPage.all
  end

  # GET /info_pages/1
  # GET /info_pages/1.json
  def show
  end

  # GET /info_pages/new
  def new
    @info_page = InfoPage.new
  end

  # GET /info_pages/1/edit
  def edit
  end

  # POST /info_pages
  # POST /info_pages.json
  def create
    @info_page = InfoPage.new(info_page_params)

    respond_to do |format|
      if @info_page.save
        format.html { redirect_to @info_page, notice: 'Info page was successfully created.' }
        format.json { render :show, status: :created, location: @info_page }
      else
        format.html { render :new }
        format.json { render json: @info_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /info_pages/1
  # PATCH/PUT /info_pages/1.json
  def update
    respond_to do |format|
      if @info_page.update(info_page_params)
        format.html { redirect_to @info_page, notice: 'Info page was successfully updated.' }
        format.json { render :show, status: :ok, location: @info_page }
      else
        format.html { render :edit }
        format.json { render json: @info_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /info_pages/1
  # DELETE /info_pages/1.json
  def destroy
    @info_page.destroy
    respond_to do |format|
      format.html { redirect_to info_pages_url, notice: 'Info page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_info_page
      @info_page = InfoPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def info_page_params
      params.require(:info_page).permit(:information)
    end
end
