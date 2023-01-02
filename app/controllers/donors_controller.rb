class DonorsController < ApplicationController
  before_action :set_donor, only: %i[ show update destroy ]

  # GET /donors
  def index
    @donors = Donor.all
    render json: @donors.to_json(except:[:created_at, :updated_at], include: {donations: {except: [:created_at, :updated_at]}})
  end

  # GET /donors/1
  def show
    render json: @donor
  end

  # POST /donors
  def create
    @donor = Donor.new(donor_params)

    if @donor.save
      render json: @donor, status: :created, location: @donor
    else
      render json: @donor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /donors/1
  def update
    if @donor.update(donor_params)
      render json: @donor
    else
      render json: @donor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /donors/1
  def destroy
    @donor.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donor
      @donor = Donor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def donor_params
      params.require(:donor).permit(:name)
    end
end
