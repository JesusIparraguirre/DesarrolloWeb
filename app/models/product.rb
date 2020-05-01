class Product < ApplicationRecord
    belongs_to:Categorium
    validates_presence_of :nombre, :message => " vacio, ingrese nombre del producto" 
    validates_presence_of :precio, :message => "vacio, ingrese precio del producto" 
    validates_presence_of :stock, :message => "vacio, ingrese stock del producto" 
    validates_presence_of :descripcion, :message => "vacio, ingrese descripcion del producto" 
    validates_presence_of :urlimagen, :message => "vacio, ingrese urlimagen del producto" 
    validates_presence_of :categoria, :message => "vacio, ingrese categoria del producto" 


    # validates :precio, presence: true
    # validates :stock, presence: true
    # validates :stock, :numericality => { :greater_than_or_equal_to => 1 }
    # validates :descripcion, presence: true
    # validates :urlimagen, presence: true
    # validates :categoria, presence: true
end
