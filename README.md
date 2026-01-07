# Builder
**THIS IS A POC THAT WILL BE INTEGRATED INTO 'FACTORY'**
**Signifcant amounts of infrastructure do exist but this repo seeks to distill 'the core' as 'best as possible'**
CURRENT STATUS:
- Ranger
-- Custom Patch that accounts for:
---  SOLR 9.X
---  Kafka 3.9.1
---  Ozone 2.1.0
---  Zookeeepr 3.9.4
---  Trino 451
- Atlas
-- To integrate/WIP bc Janusgraph
- Ozone 
-- To integrate
- Solr
-- To integrate
- Zookeeper
-- To integrate
- Hive
-- To integrate
- Spark/Sedona
-- To integrate
- Custom Postgres
-- To integrate
- HBase
-- To integrate/WIP bc funky
- Zeppelin
-- To integrate
- Knox 
-- To integrate/WIP
- Nifi
-- TODO
- Airflow
-- Later

## Dependencies

### Core
1. Git

### Docker
@TODO: Add stuff

### NPM
@TODO: big pain in the ass (for me lol)

### SDKMAN
@TODO: ADD Stuff about

```bash
#basic installation
curl -s "https://get.sdkman.io" | bash
```

#### SDKMAN setup 
We are to install JDK 11 as well as Maven.

```
#maven
sdk install maven 3.9.9
```

```
bash
#so for this checkout ./builder.sh for ref /what I used but you can be rather selective in different JDKs for JDK 11 

##Installing the jdk
sdk install java 11.0.29-tem
```

## Run
Yeah so very basic POC and will be used for testing.
```bash
#build the artifacts
./builder.sh

#launch docker containers
./docker.sh
```




