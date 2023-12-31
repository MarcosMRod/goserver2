-- +goose Up
CREATE TABLE FEED_FOLLOWS (
    ID UUID PRIMARY KEY,
    CREATED_AT TIMESTAMP NOT NULL,
    UPDATED_AT TIMESTAMP NOT NULL,
    USER_ID UUID NOT NULL REFERENCES USERS(ID) ON DELETE CASCADE,
    FEED_ID UUID NOT NULL REFERENCES FEEDS(ID) ON DELETE CASCADE,
    UNIQUE(USER_ID, FEED_ID)
);

-- +goose Down
DROP TABLE FEED_FOLLOWS;