-- Horizontal View
CREATE VIEW real_estate_floor1 AS
SELECT real_estate_id, area, type, number_of_rooms, floor, number_of_floors, living_space, cost, status, agent_id
FROM real_estates
WHERE floor = 1;

-- Vertical View
CREATE VIEW client_real_estate AS
SELECT client_id, first_name, last_name, preferences, contacts, real_estates.*
FROM clients
JOIN real_estates ON clients.real_estate_id = real_estates.real_estate_id;

-- Mixed View
CREATE VIEW mixed_contracts AS
SELECT contracts.*, owners.address , clients.preferences , real_estates.area 
FROM contracts
JOIN owners ON contracts.owner_id = owners.owner_id
JOIN clients ON contracts.client_id = clients.client_id
JOIN real_estates ON owners.real_estate_id = real_estates.real_estate_id;

-- View with Joining
CREATE VIEW join_real_estates_agents_owners AS
SELECT real_estates.*, agents.contacts , owners.address 
FROM real_estates
JOIN agents ON real_estates.agent_id = agents.agent_id
JOIN owners ON real_estates.real_estate_id = owners.real_estate_id;

-- View with Subquery
CREATE VIEW highest_contract_amount AS
SELECT real_estates.*, highest_contract.contract_amount AS highest_contract_amount
FROM real_estates
RIGHT JOIN (
    SELECT MAX(contract_amount) AS contract_amount
    FROM contracts
) AS highest_contract ON real_estates.cost = highest_contract.contract_amount;

-- View with Union
CREATE VIEW union_client_owner AS
SELECT client_id AS id, first_name, last_name, contacts
FROM clients
UNION
SELECT owner_id AS id, first_name, last_name, contacts
FROM owners;

-- View on the Select from Another View
CREATE VIEW join_real_estates_agents AS
SELECT real_estate_id, type, floor, agent_id
FROM join_real_estates_agents_owners;

-- View with Check Option
CREATE VIEW check_option_real_estates AS
SELECT *
FROM real_estates
WHERE status = 'Available'
WITH CHECK OPTION;
