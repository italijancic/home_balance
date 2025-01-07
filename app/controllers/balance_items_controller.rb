class BalanceItemsController < ApplicationController
  before_action :set_balance_item, only: %i[ show edit update destroy ]

  # GET /balance_items or /balance_items.json
  def index
    @balance_items = BalanceItem.all
  end

  # GET /balance_items/1 or /balance_items/1.json
  def show
  end

  # GET /balance_items/new
  def new
    @balance_item = BalanceItem.new
  end

  # GET /balance_items/1/edit
  def edit
  end

  # POST /balance_items or /balance_items.json
  def create
    @balance_item = BalanceItem.new(balance_item_params)

    respond_to do |format|
      if @balance_item.save
        format.html { redirect_to @balance_item, notice: "Balance item was successfully created." }
        format.json { render :show, status: :created, location: @balance_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @balance_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /balance_items/1 or /balance_items/1.json
  def update
    respond_to do |format|
      if @balance_item.update(balance_item_params)
        format.html { redirect_to @balance_item, notice: "Balance item was successfully updated." }
        format.json { render :show, status: :ok, location: @balance_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @balance_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /balance_items/1 or /balance_items/1.json
  def destroy
    @balance_item.destroy!

    respond_to do |format|
      format.html { redirect_to balance_items_path, status: :see_other, notice: "Balance item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_balance_item
      @balance_item = BalanceItem.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def balance_item_params
      params.expect(balance_item: [ :balance_id, :category_id, :creator_id, :payer_id, :participant_id, :amount, :currency_id ])
    end
end
