-- Query 1
SELECT suppliers.sname, COUNT(parts.pid) FROM suppliers, Parts, Catalog WHERE Suppliers.sid = Catalog.sid AND 
	Catalog.pid = Parts.pid GROUP BY suppliers.sname;

-- Query 2
SELECT suppliers.sname, COUNT(parts) FROM suppliers, Parts, Catalog WHERE Suppliers.sid = Catalog.sid AND 
	Catalog.pid = Parts.pid GROUP BY suppliers.sname HAVING COUNT(parts) >= 3;

-- Query 3
SELECT suppliers.sname, COUNT(*) FROM suppliers, parts, catalog WHERE suppliers.sid = catalog.sid AND 
	catalog.pid = parts.pid AND parts.color = 'Green' GROUP BY suppliers.sname;

-- Query 4
create view temp as
SELECT suppliers.sname, suppliers.sid FROM suppliers, parts, catalog WHERE suppliers.sid = catalog.sid AND 
	catalog.pid = parts.pid AND parts.color = 'Green'
INTERSECT
SELECT suppliers.sname, suppliers.sid FROM suppliers, parts, catalog WHERE suppliers.sid = catalog.sid AND 
	catalog.pid = parts.pid AND parts.color = 'Red';

SELECT temp.sname, MAX(catalog.cost) FROM temp, catalog WHERE temp.sid = catalog.sid GROUP BY temp.sname;