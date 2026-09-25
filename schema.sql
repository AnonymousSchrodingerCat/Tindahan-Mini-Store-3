CREATE TABLE IF NOT EXISTS products (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  price NUMERIC NOT NULL DEFAULT 0,
  stock INTEGER NOT NULL DEFAULT 0
);

CREATE TABLE IF NOT EXISTS sales (
  id SERIAL PRIMARY KEY,
  time TIMESTAMPTZ NOT NULL DEFAULT now(),
  items JSONB NOT NULL,
  total NUMERIC NOT NULL,
  cash NUMERIC NOT NULL,
  change NUMERIC NOT NULL
);

-- A couple of sample products so the app isn't empty on first load
INSERT INTO products (name, price, stock) VALUES
  ('Coke 1.5L', 65, 24),
  ('Lucky Me Pancit Canton', 16, 40)
ON CONFLICT DO NOTHING;
