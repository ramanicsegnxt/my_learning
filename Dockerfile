FROM cypress/included:14.0.1

WORKDIR /e2e
COPY package.json .
COPY package-lock.json .
RUN npm ci

COPY . .

ENTRYPOINT ["npm", "run", "uat:chrome"]