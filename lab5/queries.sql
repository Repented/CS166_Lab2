SELECT pid FROM Catalog WHERE Catalog.cost < 10;

SELECT DISTINCT pname from parts, catalog where parts.pid = catalog.pid 
	and catalog.cost < 10;

SELECT address from Suppliers, Parts, Catalog where
	Suppliers.sid = Catalog.sid and Catalog.pid = Parts.pid
	and parts.pname = 'Fire Hydrant Cap';

SELECT sname from Suppliers, Catalog, Parts where 
	Suppliers.sid = Catalog.sid and Catalog.pid = Parts.pid 
	and Parts.color = 'Green';

SELECT sname, pname from Suppliers, Parts, Catalog where
	Suppliers.sid = Catalog.sid and Catalog.pid = Parts.pid;
