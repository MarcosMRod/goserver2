-- +goose Up
ALTER TABLE USERS ADD COLUMN API_KEY VARCHAR(64) UNIQUE NOT NULL DEFAULT ( ENCODE(SHA256(RANDOM()::TEXT::BYTEA), 'hex') );

-- +goose Down
ALTER TABLE USERS DROP COLUMN API_KEY;