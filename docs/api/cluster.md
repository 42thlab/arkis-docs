# Cluster

A cluster is a group of docker hosts wich are on the same private network.

### Attributes

Attribute   | Description
----------- | -----------
uuid        | A unique identifier for the cluster generated automatically on creation
name        | A user provided name for the cluster
token       | Token key to reach the cluster
nodes_count | The number of nodes present in the cluster
nodes       | A list of  resource UUID of `Node` objects present in the cluster
tags        | A list of tags to identify the cluster when listing clusters (see [Tags](/api/tags))
created_at  | The date and time when this cluster was created
updated_at  | The date and time when this cluster was updated

## List all clusters

List all clusters avalaible. Returns a list of `Cluster` objects.

### HTTP Request

`GET /api/v1/clusters`

### Query Parameters

Parameter   | Description
---------   | -----------
name        | Filter by cluster name
tags        | Filter by a list of tags (e.g. `["france", "production"]`)
nodes_count | Filter by a number of nodes
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
tags  | (optional) List of tags to identify the cluster when listing clusters (see [Tags](/api/tags))
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
