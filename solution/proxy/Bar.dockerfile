FROM node:22.7-alpine3.19

WORKDIR /api

RUN npm install -g json-server@1.0.0-beta.2


COPY <<EOF db.json
{
  "bars": [
    { "id": 1, "data": "Nyah"},
    { "id": 2, "data": "Bleh"}
  ]
}
EOF

CMD json-server db.json
