ALTER TABLE startups ALTER COLUMN name      VARCHAR(255) NULL;
ALTER TABLE startups ALTER COLUMN location  VARCHAR(255) NULL;
ALTER TABLE startups ALTER COLUMN category  VARCHAR(255) NULL;
ALTER TABLE startups ALTER COLUMN stage     VARCHAR(50)  NULL;
ALTER TABLE startups ALTER COLUMN ceo       VARCHAR(255) NULL;
ALTER TABLE startups ALTER COLUMN info      VARCHAR(MAX) NULL;

-- Optional but recommended to avoid overflow on big numbers:
ALTER TABLE startups ALTER COLUMN raised    BIGINT       NULL;
ALTER TABLE startups ALTER COLUMN valuation BIGINT       NULL;