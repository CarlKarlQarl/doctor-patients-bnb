class PatientsController < ApplicationController
    def index
        patients = Patient.where("age < 10")
        render json: patients
    end
end
