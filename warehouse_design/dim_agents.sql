\c topmodelsql

DROP TABLE IF EXISTS dim_agents;

CREATE TABLE dim_agents
(agent_id SERIAL PRIMARY KEY,
agent VARCHAR(50) NOT NULL);

INSERT INTO dim_agents
(agent)
SELECT DISTINCT
agent
FROM models;

SELECT * FROM dim_agents;

-- CREATE TABLE dim_agents
-- (agent_id SERIAL PRIMARY KEY,
-- agent VARCHAR(50) NOT NULL,
-- category VARCHAR(50) NOT NULL,
-- area VARCHAR(50) NOT NULL);

-- INSERT INTO dim_agents
-- (agent,
-- category,
-- area)
-- SELECT DISTINCT
-- agent,
-- category,
-- area
-- FROM models;

-- SELECT * FROM dim_agents;
