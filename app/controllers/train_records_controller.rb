class TrainRecordsController < ApplicationController
  before_action :set_train_record, only: [:show, :edit, :update, :destroy]

  # GET /train_records
  # GET /train_records.json
  def index
    @train_records = TrainRecord.all
  end

  # GET /train_records/1
  # GET /train_records/1.json
  def show
  end

  # GET /train_records/new
  def new
    @train_record = TrainRecord.new
  end

  # GET /train_records/1/edit
  def edit
  end

  # POST /train_records
  # POST /train_records.json
  def create
    @train_record = TrainRecord.new(train_record_params)

    respond_to do |format|
      if @train_record.save
        format.html { redirect_to @train_record, notice: 'Train record was successfully created.' }
        format.json { render action: 'show', status: :created, location: @train_record }
      else
        format.html { render action: 'new' }
        format.json { render json: @train_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /train_records/1
  # PATCH/PUT /train_records/1.json
  def update
    respond_to do |format|
      if @train_record.update(train_record_params)
        format.html { redirect_to @train_record, notice: 'Train record was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @train_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /train_records/1
  # DELETE /train_records/1.json
  def destroy
    @train_record.destroy
    respond_to do |format|
      format.html { redirect_to train_records_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_train_record
      @train_record = TrainRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def train_record_params
      params.require(:train_record).permit(:train_course_id, :user_id)
    end
end
