create table tmp_clientes_004_activos as
select id_cliente, id_contrato, vorname,
	case when 0.00 <= rdn_fname and rdn_fname < 0.05 then 'Schmidt' 
	when 0.05 <= rdn_fname and rdn_fname < 0.10 then  'Schneider' 
	when 0.10 <= rdn_fname and rdn_fname < 0.15 then 'Fischer' 
	when 0.15 <= rdn_fname and rdn_fname < 0.20 then 'Weber' 
	when 0.20 <= rdn_fname and rdn_fname < 0.25 then 'Neumann' 
	when 0.25 <= rdn_fname and rdn_fname < 0.30 then 'Klein' 
	when 0.30 <= rdn_fname and rdn_fname < 0.35 then 'Richter' 
	when 0.35 <= rdn_fname and rdn_fname < 0.40 then 'Bauer' 
	when 0.40 <= rdn_fname and rdn_fname < 0.45 then 'Hoffmann' 
	when 0.45 <= rdn_fname and rdn_fname < 0.50 then 'Koch' 
	when 0.50 <= rdn_fname and rdn_fname < 0.55 then 'Zimmermann' 
	when 0.55 <= rdn_fname and rdn_fname < 0.60 then 'Schwarz' 
	when 0.60 <= rdn_fname and rdn_fname < 0.65 then 'Wolf' 
	when 0.65 <= rdn_fname and rdn_fname < 0.70 then 'Schulz' 
	when 0.70 <= rdn_fname and rdn_fname < 0.75 then 'Wagner' 
	when 0.75 <= rdn_fname and rdn_fname < 0.80 then 'Meyer' 
	when 0.80 <= rdn_fname and rdn_fname < 0.85 then 'Bamberger' 
	when 0.85 <= rdn_fname and rdn_fname < 0.90 then 'Holstein' 
	when 0.90 <= rdn_fname and rdn_fname < 0.95 then 'Vergerhein' 
	when 0.95 <= rdn_fname and rdn_fname < 0.97 then 'Bier' 
	else 'Figueroa' end as fname, 1 as Activo
from tmp_clientes_003_activos_connombre