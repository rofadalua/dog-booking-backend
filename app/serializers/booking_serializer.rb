class BookingSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :pet_name, :phone_number, :email, :date, :description

  
end
