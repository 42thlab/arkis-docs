# Cluster

A cluster is a group of nodes wich are on the same private network.

### Attributes

Attribute   | Description
----------- | -----------
uuid        | A unique identifier for the cluster generated automatically on creation
name        | A user provided name for the cluster
token       | Token key to reach the cluster
strategy    | Strategy for ranking the node (see [Strategies](https://docs.docker.com/swarm/scheduler/strategy/))
nodes_count | The number of containers present in the cluster
containers_count | The number of containers present in the cluster
nodes       | A list of resource UUID of `Node` objects present in the cluster
deployed_at | The date and time when this cluster was deployed
updated_at  | The date and time when this cluster was updated last

## List all clusters

List all clusters avalaible. Returns a list of `Cluster` objects.

### HTTP Request

`GET /api/v1/clusters`

### Query Parameters

Parameter   | Description
---------   | -----------
name        | Filter by cluster name
strategy    | Filter by strategy
limit       | Limits the number of returned objects (by defauts returns all records)
page        | Returns one page of records at a time (by default, sets the `limit` parameter to 10)

## Create a new cluster

Creates a new cluster without deploying it.

### HTTP Request

`POST /api/v1/cluster`

### JSON Parameters

Parameter | Description
--------- | -----------
name  | (required) A user provided name for the cluster
strategy | (required) A user provided strategy for the cluster (e.g. `spread`, `binpack` or `random`)
nodes | (required) A list of `Node` objects for the cluster (must have at least one node)

### Get an existing cluster

Get all the informations of a specific cluster.

### HTTP Request

`GET /api/v1/cluster/:uuid/`

### Query Parameters

Parameter | Description
--------- | -----------
uuid | The UUID of the cluster to retrieve

## Destroy a cluster

Destroy all the nodes in a cluster and the cluster itself. This is irreversible.

### HTTP Request

`DELETE /api/v1/cluster/:uuid/`

### Query Parameters

Parameter | Description
--------- | -----------
uuid | The UUID of the cluster to retrieve
