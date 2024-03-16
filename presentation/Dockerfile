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

