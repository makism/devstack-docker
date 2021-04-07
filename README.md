### devstack-docker

A few Dockerfiles for data analysis and development.

- - -

The stack includes:
* Apache Airflow
* Apache Spark and Jupyter Lab
* FastAPI
* MongoDB

Some of the corresponding directories may contain the files `prepare.sh` and/or `build.sh`.
You may need to modify the file `prepare.sh`.

As *root*, execute `prepare.sh` to create the volume directories in `/opt/`, and then manually, from a terminal `chown` those directories to the user that will run the `build.sh` and `docker-compose` commands, i.e. your personal account.
