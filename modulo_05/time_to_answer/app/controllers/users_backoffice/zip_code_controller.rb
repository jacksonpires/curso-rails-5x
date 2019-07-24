class UsersBackoffice::ZipCodeController < UsersBackofficeController
  def show
    @cep = CEP.new(params[:zip_code])
  end
end
