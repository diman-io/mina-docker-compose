# docker-compose for mina block-producer stack

Stack contains 4 services:
 - daemon
 - postgres
 - archive
 - sidecar

Only port 8302 binded to host. If you need 5432 from postgres or others - edit docker-compose for this.

## How to use
```
git clone https://github.com/diman-io/mina-docker-compose mina
cd mina
mkdir minadata
mkdir pgdata
mkdir keys
chmod 700 keys
```
Copy your blockproducer key files to `keys` and `chmod 600` private key file

Change in `docker-compose.yml` to yours:
 - private key filename
 - password
 - coinbase receiver address

```
docker-compose up -d
```
In 5 minutes restart `sidecar` container (because there is issue now in script):
```
docker-compose restart sidecar
```

## Usefull commands
```
docker-compose logs -f [service]
docker-compose stop [service]
docker-compose rm -f [service]

docker-compose --help
```

And you could use `docker` of course for each container in stack.
