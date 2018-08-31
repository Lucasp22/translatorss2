class PagesController < ApplicationController
  before_action :get_languages, :only => [:home, :search]
  def home
  end

  def search
    from_id = params[:from_languages].to_i
    to_id = params[:to_languages].to_i

    # get reference to service schema
    arel = Service.arel_table

    # where service from_language_id == from_id && to_language_id == to_id
    query = arel[:from_language_id].eq(from_id).and(arel[:to_language_id].eq(to_id))

    @user_matches = User.joins(:services).distinct.where(query)

    # find Users where there is at least one service that has from_id and to_id
    # OLD VERSION
    # @user_matches = User.joins(:services)
    #                 .distinct.where(
    #                   services: {
    #                     :from_language_id => from_id,
    #                     :to_language_id => to_id
    #                   })

    render :action => :home
  end

  private
    def get_languages
      @users = User.all
      @from_languages = FromLanguage.all
      @to_languages = ToLanguage.all
    end
end
