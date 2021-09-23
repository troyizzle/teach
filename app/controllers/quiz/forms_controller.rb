class Quiz::FormsController < ApplicationController
  before_action :set_quiz_form, only: %i[ show edit update destroy ]

  # GET /quiz/forms or /quiz/forms.json
  def index
    @quiz_forms = Quiz::Form.all
  end

  # GET /quiz/forms/1 or /quiz/forms/1.json
  def show
  end

  # GET /quiz/forms/new
  def new
    @quiz_form = Quiz::Form.new
  end

  # GET /quiz/forms/1/edit
  def edit
  end

  # POST /quiz/forms or /quiz/forms.json
  def create
    @quiz_form = Quiz::Form.new(quiz_form_params)

    respond_to do |format|
      if @quiz_form.save
        format.html { redirect_to @quiz_form, notice: "Form was successfully created." }
        format.json { render :show, status: :created, location: @quiz_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @quiz_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quiz/forms/1 or /quiz/forms/1.json
  def update
    respond_to do |format|
      if @quiz_form.update(quiz_form_params)
        format.html { redirect_to @quiz_form, notice: "Form was successfully updated." }
        format.json { render :show, status: :ok, location: @quiz_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @quiz_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quiz/forms/1 or /quiz/forms/1.json
  def destroy
    @quiz_form.destroy
    respond_to do |format|
      format.html { redirect_to quiz_forms_url, notice: "Form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quiz_form
      @quiz_form = Quiz::Form.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def quiz_form_params
      params.require(:quiz_form).permit(:name)
    end
end
