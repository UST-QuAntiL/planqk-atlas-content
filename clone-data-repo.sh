if [ -d "${SSH_PRIVATE_KEY}" ] ; then
# add ssh key and add github as known host
    mkdir /root/.ssh/ && echo "${SSH_PRIVATE_KEY}" >> /root/.ssh/id_rsa \
    chmod 400 /root/.ssh/id_rsa && ssh-keyscan github.com >> /root/.ssh/known_hosts \
# clone repo and copy the file with the sql statements to the folder that is executed on startup of the postgres db
    git clone ${QC_ATLAS_CONTENT_REPOSITORY_URL} ${QC_ATLAS_CONTENT_REPOSITORY_PATH} \
    cp ${QC_ATLAS_CONTENT_REPOSITORY_PATH}/example-data/SQL/data-qc-atlas-with-tabledef.sql /docker-entrypoint-initdb.d/data-qc-atlas-with-tabledef.sql;
fi













