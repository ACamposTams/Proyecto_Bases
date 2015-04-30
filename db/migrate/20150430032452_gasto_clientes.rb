class GastoClientes < ActiveRecord::Migration
  def up
  	self.connection.execute %Q(CREATE OR REPLACE VIEW gasto_clientes AS
  	SELECT 
      compradors.nombre as cliente, 
      sum(orders.total) as gasto
    FROM 
    public.orders join
    public.compradors on orders.comprador_id = compradors.id
    WHERE 
    compradors.id in (select comprador_id from orders) group by (compradors.nombre);
)
  end

  def down
  	self.connection.execute "DROP VIEW IF EXISTS gasto_clientes;"
  end
end
