# get data from our 04-producer.md into ElasticSearch
connect-standalone config/connect-standalone.properties config/elasticsearch.properties

GET wikimedia.recentchange/_search
{
 "query": {
   "match_all": {}
 }
}