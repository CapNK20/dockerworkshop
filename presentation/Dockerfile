FROM scratch AS src

WORKDIR /reveal

ADD https://github.com/hakimel/reveal.js.git .
#RUN npm ci

#RUN sed -e "s/const host = yargs.argv.host || 'localhost'/const host = ''/"

#CMD npm start

FROM nginx

WORKDIR /usr/share/nginx/html

COPY --from=src /reveal/dist/ ./dist
COPY --from=src /reveal/plugin/ ./plugin

# Not in use
## Specific commit prevents supply chain attacks and new versions with breaking changes
#ADD --chmod=444 https://github.com/calevans/external/raw/0650ecd5f08855306b37298db22aec3283ed689c/external/external.js ./plugin/external/external.js
