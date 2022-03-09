### Jupyter notebook & mongodb

Simple project with Jupyter and MongoDb.

### Installation

---

Run the bash script in the root folder:
```
./build.sh
```

You will create a new folder `config` with `mongodb.env`.


### Running container

---

For the better user experience, you should install
[MongoDb Compass](https://www.mongodb.com/try/download/compass)

First step is building all the services:
```
docker-compose build
```

Now you should run the containers (detached mode `-d`):
```
docker-compose up -d
```

Run your browser and go to URL below:
```
localhost:8888
```

.. and do not forget to enter your password.

