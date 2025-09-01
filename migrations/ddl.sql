CREATE TABLE role (
                      id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
                      name TEXT NOT NULL,
                      created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
                      updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE employee (
                          id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
                          name TEXT NOT NULL,
                          created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
                          updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);