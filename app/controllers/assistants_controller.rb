class AssistantsController < ApplicationController
  before_filter :has_to_authenticate
  before_filter :just_doctor

  def new
    @assistant = Assistant.new
  end

  def create
    @assistant = Assistant.new(assistant_params)
    begin
      id= ActiveRecord::Base.connection.execute("SELECT COUNT(*) FROM assistants;")
      id.each do |row|
        id = row
      end
      id = id[0].to_i
      raw_sql = "INSERT INTO assistants (aid, name, mail, password_digest, doc_id) VALUES ('#{id}', '#{@assistant.name}', '#{@assistant.mail}', '#{@assistant.password_digest}', '#{current_user.u_id}');"
      ActiveRecord::Base.connection.execute raw_sql

      redirect_to pacientes_url, notice: "Your assistant has been signed up!"
    rescue
      render :new
    end
  end

  private
  def assistant_params
    params.require(:assistant).permit(:name, :mail, :password, :password_confirmation)
  end
end
