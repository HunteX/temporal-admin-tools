# huntex/temporal-admin-tools

## Usage

```bash
docker run --rm -v ./temporal/schema/postgresql/v12/temporal/versioned:/app huntex/temporal-admin-tools --endpoint 127.0.0.1 --port 5432 --user postgres --password "password" --database temporal --plugin postgres12 setup-schema -v 0.0
docker run --rm -v ./temporal/schema/postgresql/v12/temporal/versioned:/app huntex/temporal-admin-tools --endpoint 127.0.0.1 --port 5432 --user postgres --password "password" --database temporal --plugin postgres12 --connect-attributes "binary_parameters=yes" update-schema -d /app
```