curl -XPUT "${ES_HOST:-localhost}:${ES_PORT:-9200}/_template/statsd-template" -d '
{
  "d2-statsd-tmpl" : {
    "order" : 0,
    "index_patterns" : [
      "d2-statsd-*"
    ],
    "settings" : {
      "index" : {
        "number_of_shards" : "1",
        "number_of_replicas" : "1"
      }
    },
    "mappings" : {
      "_doc" : {
        "_source" : {
          "enabled" : true
        },
        "properties" : {
          "environment" : {
            "type" : "keyword"
          },
          "type" : {
            "type" : "keyword"
          },
          "@timestamp" : {
            "type" : "date"
          },
          "val" : {
            "type" : "float",
            "index" : false
          },
          "ns" : {
            "type" : "keyword"
          },
          "grp" : {
            "type" : "keyword"
          },
          "tgt" : {
            "type" : "keyword"
          },
          "act" : {
            "type" : "keyword"
          },
          "count_ps" : {
            "type" : "float",
            "index" : false
          },
          "count" : {
            "type" : "float",
            "index" : false
          },
          "upper" : {
            "type" : "float",
            "index" : false
          },
          "lower" : {
            "type" : "float",
            "index" : false
          },
          "median" : {
            "type" : "float",
            "index" : false
          },
          "mean" : {
            "type" : "float",
            "index" : false
          },
          "std" : {
            "type" : "float",
            "index" : false
          },
          "sum" : {
            "type" : "float",
            "index" : false
          },
          "mean_90" : {
            "type" : "float",
            "index" : false
          },
          "upper_90" : {
            "type" : "float",
            "index" : false
          },
          "sum_90" : {
            "type" : "float",
            "index" : false
          },
          "bin_100" : {
            "type" : "integer",
            "index" : false
          },
          "bin_500" : {
            "type" : "integer",
            "index" : false
          },
          "bin_1000" : {
            "type" : "integer",
            "index" : false
          },
          "bin_inf" : {
            "type" : "integer",
            "index" : false
          }
        }
      }
    },
    "aliases" : { }
  }
}
