-- +goose Up
CREATE TABLE role (
                      id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
                      name TEXT NOT NULL UNIQUE,
                      created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                      updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE employee (
                          id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
                          name TEXT NOT NULL,
                          role_id BIGINT NOT NULL REFERENCES role(id) ON DELETE CASCADE,
                          created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                          updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- +goose Down
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS role;
