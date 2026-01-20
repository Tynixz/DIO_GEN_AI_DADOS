-- Create table for collections
CREATE TABLE tbl_collections (
    id INT AUTO_INCREMENT PRIMARY KEY,
    collectionSetName VARCHAR(100) NOT NULL,
    releaseDate DATE NOT NULL,
    totalCardsInCollection INT NOT NULL
);


-- Table for card types
CREATE TABLE tbl_types (
    id INT AUTO_INCREMENT PRIMARY KEY,
    typeName VARCHAR(50) NOT NULL UNIQUE
);

-- Table for card stages
CREATE TABLE tbl_stages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    stageName VARCHAR(50) NOT NULL UNIQUE
);

-- Update tbl_cards to reference type and stage tables
CREATE TABLE tbl_cards (
    id INT AUTO_INCREMENT PRIMARY KEY,
    hp INT,
    name VARCHAR(100) NOT NULL,
    info TEXT,
    attack VARCHAR(100),
    damage VARCHAR(50),
    weak VARCHAR(50),
    resis VARCHAR(50),
    retreat VARCHAR(50),
    cardNumberInCollection INT,
    collection_id INT,   -- Foreign key to tbl_collections
    type_id INT,         -- Foreign key to tbl_types
    stage_id INT,        -- Foreign key to tbl_stages

    CONSTRAINT fk_collection
        FOREIGN KEY (collection_id) REFERENCES tbl_collections(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    CONSTRAINT fk_type
        FOREIGN KEY (type_id) REFERENCES tbl_types(id)
        ON DELETE SET NULL
        ON UPDATE CASCADE,

    CONSTRAINT fk_stage
        FOREIGN KEY (stage_id) REFERENCES tbl_stages(id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);
