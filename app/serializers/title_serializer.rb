class TitleSerializer < ActiveModel::Serializer
  attributes :id, :title_number, :password

  belongs_to :sale
end
