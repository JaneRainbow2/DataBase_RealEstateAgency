
CREATE ROLE agent_role;

CREATE ROLE client_role;


CREATE USER agent_user_id01 WITH PASSWORD 'agent_password';
GRANT agent_role TO agent_user_id01;


CREATE USER client_user_id05 WITH PASSWORD 'client_password';
GRANT client_role TO client_user_id05;
