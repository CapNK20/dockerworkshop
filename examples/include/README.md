# Include example

Purpose here is to define two docker compose environments, but share as much of the definitions as possible, to avoid
unintentional differences between them

- One rigged for fullstack development with watch and local database copy etc
  - `docker compose -f docker-compose-dev.yaml watch`
- One rigged for backend development with watch only on backend
  - `docker compose -f docker-compose-dev-backend.yaml watch`
- One rigged for frontend development with watch only on frontend
  - `docker compose -f docker-compose-dev-frontend.yaml watch`
- another rigged to be as close to production as possible including using an external database
  - `docker compose -f docker-compose-prodlike.yml up -d`
