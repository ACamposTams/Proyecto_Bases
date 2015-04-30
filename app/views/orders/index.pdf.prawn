pdf.text "Lista de Ordenes", :size =>30, :leading => 20

orders =@orders.each do |order|
pdf.text "Orden: ##{order.id}", :size => 20, :style => :bold
pdf.text "Cliente: #{order.comprador.nombre}", :size => 20
pdf.text "Direccion: #{order.comprador.direccion}", :size => 16
pdf.text "Telefono: #{order.comprador.telefono}", :size => 16
pdf.text "Total de la Compra: #{number_to_currency(order.total)}", :size => 16, :style => :bold, :leading => 20

end