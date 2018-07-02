# Elasticsearch docker with repository oss plugin

#### This branch uses `oss` flavor of elasticsearch. 

For Elasticsearch 6 and above set `ES_JAVA_OPTS` env as `.env` file.

This dockerfile uses [elasticsearch-repository-oss](https://github.com/zhichen/elasticsearch-repository-oss) plugin to add `oss` type to elasticsearch snapshot types (for alibaba bucket storage). See the plugin README to use it.

For `standard` flavor of elasticsearch (which is shipped with X-Pack and some codes under Elastic licenses) use master branch.

### CREDITS
______
 This dockerfile is originally written by [@aramalipoor](https://github.com/aramalipoor)
    

