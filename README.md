# Db-net EIP implementation
Enterprise Integration Pattern (EIP) demonstrator as (timed) db-net extension of CPNTools

## System Requirements

1. Windows 10 (due to the CPN Tools, sorry guys)
2. Working internet connection
3. JDK8 (eg, from [Oracle](http://www.oracle.com/technetwork/pt/java/javase/downloads/jdk8-downloads-2133151.html?printOnly=1))
4. CPN Tools version 4 (eg, from [CPN Tools](http://cpntools.org/2018/01/16/download/))
5. PostgresSQL version 10 (eg, from [PostgresSQL](https://www.postgresql.org/download/))

## Simulating the patterns

1. Run the dbNet.jar to start the extension server (java -jar dbNet.jar); check the icon in the toolbar and double-click to check that the db-net extension is registered.
2. start the PostgresSQL database (eg, type Start PostgresSQL 10 in Win10 search field) and load database schema from the pattern foleder, e.g., aggregator.sql (eg, using pgAdmin)
3. start the CPN Tools (eg, type CPN Tools in Win10 search field)
4. Load pattern model, e.g., aggregator.cpn, through right-click and 'load model'
5. (a window will open) enter your database credentials and host / port settings and connect to database (eg, localhost on port 5432 with user credentials)
6. Right click on the connect artifact in the model and select 'excecute ML' OR select ML in the CPN Toolbar and drag and drop there
7. Enter the port configured in the connect artifact into the extension GUI and connect CPN/COMM (default 9001)
8. Start executing enabled transitions

## License

Please note that the demonstrator is a CPN Tools extension, and thus uses the [Access/CPN](http://cpntools.org/2018/01/15/license-for-access-cpn/) module, which comes with a LGPL license. However, Access/CPN references the [CPN Tools Simulator](http://cpntools.org/2018/01/15/license-for-cpn-tools-simulator/) module, which is dual-licensed and can be used either under the GNU General Public License (GPL) version 2 or by the below license, which is a 4-clause BSD license.

## Citation

If you find this work useful for your research, please cite:
```
@inproceedings{RRMMRS2018,
  title={Formalizing Application Integration Patterns},
  author={Ritter, Daniel and Rinderle-Ma, Stefanie and Montali, Marco and Rivkin, Andrey and Sinha, Aman},
  booktitle={2018 IEEE 22nd International Enterprise Distributed Object Computing Conference (EDOC)},
  pages={--},
  year={2018},
  organization={IEEE}
}
```
