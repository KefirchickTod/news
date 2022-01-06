class Admin::ArticleCategoriesController < AdminController
  before_action :set_admin_article_category, only: %i[ show edit update destroy ]

  # GET /admin/article_categories or /admin/article_categories.json
  def index
    @admin_article_categories = Admin::ArticleCategory.all
  end

  # GET /admin/article_categories/1 or /admin/article_categories/1.json
  def show
  end

  # GET /admin/article_categories/new
  def new
    @admin_article_category = Admin::ArticleCategory.new
  end

  # GET /admin/article_categories/1/edit
  def edit
  end

  # POST /admin/article_categories or /admin/article_categories.json
  def create
    @admin_article_category = Admin::ArticleCategory.new(admin_article_category_params)

    respond_to do |format|
      if @admin_article_category.save
        format.html { redirect_to admin_article_category_url(@admin_article_category), notice: "Article category was successfully created." }
        format.json { render :show, status: :created, location: @admin_article_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_article_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/article_categories/1 or /admin/article_categories/1.json
  def update
    respond_to do |format|
      if @admin_article_category.update(admin_article_category_params)
        format.html { redirect_to admin_article_category_url(@admin_article_category), notice: "Article category was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_article_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_article_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/article_categories/1 or /admin/article_categories/1.json
  def destroy
    @admin_article_category.destroy

    respond_to do |format|
      format.html { redirect_to admin_article_categories_url, notice: "Article category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_article_category
      @admin_article_category = Admin::ArticleCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_article_category_params
      params.fetch(:admin_article_category, {})
    end
end
