## Testing dbt project: `dbt_databricks_demo`

### What is this repo?

This is a demo highlighting how a dbt workflow can be used inside of Databricks, even if none of the sources or destinations are a Databricks endpoint.

### What's in this repo?

At it's core, this is a dbt project. The "models" directory contains the staging and final models that will be deployed. The "dbt_project.yml" and "profiles.yml" files are setup to read and write to a Microsoft/Azure SQL Server and are set to use environment variables. Please set these variables before runniing the project.

Please install the ```dbt-sqlserver``` package as well. You will also need the SQL Server 18 ODBC Driver (https://learn.microsoft.com/en-us/sql/connect/odbc/download-odbc-driver-for-sql-server?view=sql-server-ver16). To test this proejct locally, you need to install it locally, and you'll need to also set up your Databricks cluster with this package as well.

In the ```etc``` folder you will find a ```sql-odbc-18.sh``` shell script that you can place in your Databricks workspace that will take care of installing the SQL Server driver on your cluster.

Finally, set your environemnt variables on your Databricks cluster. You should never put plain text secrets in your cluster configurations; use the Databricks Secret Scopes (https://learn.microsoft.com/en-us/azure/databricks/security/secrets/secret-scopes) instead.


### Running this project
To get up and running with this project:
1. Install dbt using [these instructions](https://docs.getdbt.com/docs/installation).

2. Clone this repository.

3. Change into the `dbt_databricks_demo` directory from the command line:
```bash
$ cd dbt_databricks_demo
```

4. Modify the ```profiles.yml``` file as needed, and set your environment variables.

5. Ensure your profile is setup correctly from the command line:
```bash
$ dbt debug
```

7. Run the models:
```bash
$ dbt run
```

8. Test the output of the models:
```bash
$ dbt test
```

9. Generate documentation for the project:
```bash
$ dbt docs generate
```

10. View the documentation for the project:
```bash
$ dbt docs serve
```

---
For more information on dbt:
- Read the [introduction to dbt](https://docs.getdbt.com/docs/introduction).
- Read the [dbt viewpoint](https://docs.getdbt.com/docs/about/viewpoint).
- Join the [dbt community](http://community.getdbt.com/).
---
