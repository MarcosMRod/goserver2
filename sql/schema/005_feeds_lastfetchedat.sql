-- +goose Up
ALTER TABLE FEEDS ADD COLUMN LAST_FETCHED_AT TIMESTAMP;

-- +goose Down
ALTER TABLE FEEDS DROP COLUMN LAST_FETCHED_AT;