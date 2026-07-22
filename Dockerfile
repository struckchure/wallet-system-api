FROM oven/bun:1.0.23

WORKDIR /code/

COPY . .

RUN bun install
RUN bun run migrate
RUN bun run build

CMD [ "bun", "run", "start" ]
