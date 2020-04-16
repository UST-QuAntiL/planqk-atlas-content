# planqk-atlas-content

### Add example data to the data base in the right order:

Before adding an **algortihm**:
  * add related *tag*

Before adding a **qpu**:
  * add related *provider*
  * add related *sdk*
  
Before adding an **implementation**:
  * add related *algorithm*
  * add related *sdk*
  * add related *tag*
  
**Hint:** *Required IDs of the related entities in the JSONs are marked with* "..." *and must be set accordingly.*

## Creating a new Data Set with PgAdmin
[PgAdmin](https://www.pgadmin.org/) can be used to inspect and backup postgres database. With the following steps, a backup .sql file can be created: 

- Download [PgAdmin 4](https://www.pgadmin.org/download/)
- Start PgAdmin, the application should open on a browser: http://127.0.0.1:61014/browser/
- Specifiy a master password
- Make sure that your postgres database is running
- Click "Object">"Create">"Server" to connect to your database 
![add Sever](docs/pictures/create-server.PNG)
    - General: Enter e.g. "PlanQk Atlas postgres database" as Name
    - Connection for a local database: Host name address: localhost, Port: 5432, username: postgres, maintenance database: postgres (if you run the database in docker, these properties should match the docker(-compose) file definition)
![add Sever](docs/pictures/add-server.PNG)
- Make sure you have inserted the data that you want to backup into the database
- "Refresh" the database (right-click on your database instance (e.g. "PlanQk Atlas postgres database"))
- Choose "Backup..." (right-click on postgres, which is located at "PlanQk Atlas postgres database" > Databases (1) > postgres
![backup](docs/pictures/backup-click.PNG)
    - General:  
        - _Filename_: Enter "data-qc-atlas-with-tabledef.sql" to be able to use it in the docker setup
        - _Format_: Choose "Plain"
    - Dump options: 
        - Take default values (_Type of objects_ - Blob and _Miscellaneous_ - Verbose messages are selected as "YES") 
        - In _Queries_ set "Use Column Inserts" and "Use Insert Commands" to "YES"
 ![dump options](docs/pictures/backup-dump-options.PNG)
 - Replace the data-qc-atlas-with-tabledef.sql File in the [planqk-atlas-content repository](https://github.com/PlanQK/planqk-atlas-content) located under planqk-atlas-content/example-data/SQL/ with the new backup file
  
