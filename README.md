# Elasticsearch docker with repository oss plugin

For Elasticsearch 6 and above set `ES_JAVA_OPTS` env as `.env` file.

Currently Dockerfile uses elasticsearch version **6.3.1**


This Dockerfile uses [elasticsearch-repository-oss](https://github.com/zhichen/elasticsearch-repository-oss) plugin to add `oss` type to elasticsearch snapshot types (for alibaba bucket storage). See the plugin README to use it.

For `oss` flavor of elasticsearch use oss branch.

___

### Other Elasticsearch Plugins

If you want to install other Elasticsearch plugins as well, you can build dockerfile with `PLUGINS` build argument.
it accepts a space-separated list of plugins.

```
docker build . -t elasticsearch:6.3.1-with-oss-plugin-plus-other-plugins --build-arg PLUGINS="plugin_1 plugin_2 plugin_3"
```

### CREDITS
______
 This dockerfile is originally written by [@aramalipoor](https://github.com/aramalipoor)
    

