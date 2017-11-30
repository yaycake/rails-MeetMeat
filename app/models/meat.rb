class Meat < Meater
  inheritance_column = nil

  validates_presence_of :display_name

  default_scope { where(user_category: "meat") }
end
