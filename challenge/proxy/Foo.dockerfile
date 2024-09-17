FROM node:22.7-alpine3.19

WORKDIR /api

RUN npm install -g json-server@1.0.0-beta.2


COPY <<EOF db.json
{
  "foos": [
    { "id": 1, "title": "First"},
    { "id": 2, "title": "Second"}
  ]
}
EOF

CMD json-server db.json
