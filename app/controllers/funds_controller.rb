class FundsController < ProtectedController
  before_action :set_fund, only: [:show, :update, :destroy]

  # GET /funds
  # GET /funds.json
  def index
    @funds = current_user.funds
    #  Fund.all
    render json: @funds
  end

  # GET /funds/1
  # GET /funds/1.json
  def show
    # render json: @fund
    render json: Fund.find(params[:id])

    # render json: Trip.find(params[:id])
  end

  # POST /funds
  # POST /funds.json
  def create
    @fund = current_user.funds.build(fund_params)
    # current_user.trips.build(trip_params)
    # Fund.new(fund_params)

    if @fund.save
      render json: @fund, status: :created, location: @fund
    else
      render json: @fund.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /funds/1
  # PATCH/PUT /funds/1.json
  def update
    @fund = Fund.find(params[:id])

    if @fund.update(fund_params)
      head :no_content
    else
      render json: @fund.errors, status: :unprocessable_entity
    end
  end

  # DELETE /funds/1
  # DELETE /funds/1.json
  def destroy
    @fund.destroy

    head :no_content
  end

  private

  def set_fund
    @fund = current_user.funds.find(params[:id])
    # current_user.trips.find(params[:id])
    # Fund.find(params[:id])
  end

  def fund_params
    params.require(:fund).permit(:name, :sport, :minbet, :description, :user_id)
  end
end
