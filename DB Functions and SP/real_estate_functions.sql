CREATE OR REPLACE FUNCTION public.average_price_square_meter(cost integer, area integer)
 RETURNS numeric
 LANGUAGE plpgsql
AS $function$
BEGIN
RETURN cost/area;
end
$function$
;


CREATE OR REPLACE FUNCTION public.get_agent_commission(agent_num integer)
 RETURNS numeric
 LANGUAGE plpgsql
AS $function$
BEGIN
    RETURN agents.commission*real_estates.cost/100 FROM agents,real_estates WHERE agents.agent_id = agent_num AND agents.agent_id = real_estates.agent_id;
END;
$function$
;

CREATE OR REPLACE FUNCTION public.total_cost_contracts()
 RETURNS numeric
 LANGUAGE plpgsql
AS $function$
BEGIN
    RETURN sum(contracts.contract_amount)  FROM contracts;
END;
$function$
;


CREATE OR REPLACE PROCEDURE public.get_real_estate_details(IN real_estate_id_param integer)
 LANGUAGE plpgsql
AS $procedure$
DECLARE
    real_estate_data real_estates%ROWTYPE;
BEGIN
    SELECT * INTO real_estate_data FROM real_estates WHERE real_estate_id = real_estate_id_param;
   RAISE NOTICE 'Details for real estate with ID %: %', real_estate_id_param, real_estate_data;
END;
$procedure$
;


CREATE OR REPLACE PROCEDURE public.get_client_details(IN client_id_param integer)
 LANGUAGE plpgsql
AS $procedure$
DECLARE
    client_data clients%ROWTYPE;
BEGIN
	SELECT * INTO client_data FROM clients WHERE client_id = client_id_param;
	RAISE NOTICE 'Details client with ID %: %', client_id_param, client_data;
END;
$procedure$
;


CREATE OR REPLACE PROCEDURE public.add_real_estate(
	IN area_param integer, 
	IN type_param character varying, 
	IN number_of_rooms_param integer, 
	IN floor_param integer, 
	IN number_of_floors_param integer, 
	IN living_space_param integer, 
	IN cost_param integer, 
	IN status_param character varying, 
	IN agent_id_param integer)
 LANGUAGE plpgsql
AS $procedure$
BEGIN
    INSERT INTO real_estates (area, type, number_of_rooms, floor, number_of_floors, living_space, cost, status, agent_id)
    VALUES (area_param, type_param, number_of_rooms_param, floor_param, number_of_floors_param, living_space_param, cost_param, status_param, agent_id_param);
END;
$procedure$
;


CREATE OR REPLACE PROCEDURE public.add_client(
	IN first_name_param character varying, 
	IN last_name_param character varying, 
	IN preferences_param character varying, 
	IN contacts_param character varying, 
	IN real_estate_id_param integer)
 LANGUAGE plpgsql
AS $procedure$
BEGIN
    INSERT INTO clients (first_name, last_name, preferences, contacts, real_estate_id)
    VALUES (first_name_param, last_name_param, preferences_param, contacts_param, real_estate_id_param);
END;
$procedure$
;

