class SitelinksController < ApplicationController
  before_action :set_sitelink, only: %i[ show edit update destroy ]

  # GET /sitelinks or /sitelinks.json
  def index
    @sitelinks = Sitelink.all
  end

  # GET /sitelinks/1 or /sitelinks/1.json
  def show
  end

  # GET /sitelinks/new
  def new
    @sitelink = Sitelink.new
  end

  # GET /sitelinks/1/edit
  def edit
  end

  # POST /sitelinks or /sitelinks.json
  def create
    @sitelink = Sitelink.new(sitelink_params)

    respond_to do |format|
      if @sitelink.save
        format.html { redirect_to sitelink_url(@sitelink), notice: "Sitelink was successfully created." }
        format.json { render :show, status: :created, location: @sitelink }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sitelink.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sitelinks/1 or /sitelinks/1.json
  def update
    respond_to do |format|
      if @sitelink.update(sitelink_params)
        format.html { redirect_to sitelink_url(@sitelink), notice: "Sitelink was successfully updated." }
        format.json { render :show, status: :ok, location: @sitelink }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sitelink.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sitelinks/1 or /sitelinks/1.json
  def destroy
    @sitelink.destroy

    respond_to do |format|
      format.html { redirect_to sitelinks_url, notice: "Sitelink was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sitelink
      @sitelink = Sitelink.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sitelink_params
      params.require(:sitelink).permit(:name, :url)
    end
end
