-- Incidents table
CREATE TABLE incidents (
    incident_number VARCHAR(10) PRIMARY KEY,
    contact_date DATE,
    nuid VARCHAR(7),
    asset_management VARCHAR(9),
    resolved_status CHAR(2)
);

-- Users table
CREATE TABLE users (
    nuid VARCHAR(7) PRIMARY KEY
);

-- Assets table
CREATE TABLE assets (
    asset_management VARCHAR(9) PRIMARY KEY
);

