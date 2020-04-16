FROM postgres:12

LABEL MAINTAINER Manuela Weigold <manuela.weigold@iaas.uni-stuttgart.de>

ENV QC_ATLAS_CONTENT_REPOSITORY_URL "git@github.com:PlanQK/planqk-atlas-content.git"
ENV QC_ATLAS_CONTENT_REPOSITORY_PATH "/var/qc-atlas/testdata"
# this private SSH key can be set via an overwrite file
# it is used to pull data from the private planqk-atlas-content repo
ENV SSH_PRIVATE_KEY ""
ENV POSTGRES_PASSWORD postgres
ENV POSTGRES_USER postgres
ENV JDBC_DATABASE_PORT 5432
ENV POSTGRES_DB db

# install dependencies (git)
RUN  apt-get update \
  && apt-get update -qq && apt-get install -qqy \
  git \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

COPY clone-data-repo.sh clone-data-repo.sh

# if ssh key is set, clone data repo with the sql scripts for initalization and start postgres afterwards
CMD  ./clone-data-repo.sh && su postgres -c "/usr/local/bin/docker-entrypoint.sh postgres"















