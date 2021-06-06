# multiple-services-with-virtualhost
Manage multiple services with a virtual host to doesn't resource size depends on the number of services.

## Prepare

```bash
cd service-a
yarn install
./build.sh
cd -

cd service-b
yarn install
./build.sh
cd -
```

## Usage

```bash
docker-compose up --build
```
