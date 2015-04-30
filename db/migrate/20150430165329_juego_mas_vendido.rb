class JuegoMasVendido < ActiveRecord::Migration
  def up
  	self.connection.execute %Q(CREATE OR REPLACE VIEW juego_mas_vendido AS
  	SELECT 
      juegos.titulo as Juego, 
      sum(cart_productos.cantidad) as Copias_Vendidas
    FROM 
    public.juegos join
    public.cart_productos on juegos.id = cart_productos.juego_id  
    group by (juegos.titulo) order by sum(cart_productos.cantidad) desc;
)
  end

  def down
  	self.connection.execute "DROP VIEW IF EXISTS juego_mas_vendido;"
  end
end
