# Node

A node is a docker machine provided by a cloud provider where docker containers
can be deployed.

Attribute   | Description
----------- | -----------
uuid        | A unique identifier for the node generated automatically on creation
cluster     | The cluster UUID of which the node belongs
name        | A user provided name for the node (see [Regions](/api/regions/))
labels      | A list of labels to identify the node when running containers (see [Labels](/api/labels/))
state       | The state of the node. See the below table for a list of possible states
fqdn        | An automatically generated FQDN for the node
public_ip   | The public IP of the node
region      | The name identifier of the region where the node is deployed
node_size   | The name identifier of the node size object of this node (see [Node Sizes](/api/node_sizes/))
cpu         | Number of CPU's core
disk        | Storage size in GB
memory      | Memory in MB
docker_version | Docker's version used in the node
containers_count | The actual number of containers in the node
deployed_at | The date and time when this node was deployed
updated_at  | The date and time when this node was updated last

## List all nodes

List all nodes avalaible. Returns a list of `Node` objects.

### HTTP Request

`GET /api/v1/nodes`

### Query Parameters

Parameter   | Description
---------   | -----------
name        | Filter by name
state       | Filter by state
cluster     | Filter by cluster UUID
region      | Filter by region
node_size   | Filter by node size
labels      | Filter by a list of labels (e.g. `[{ "region": "us-east", "environment": "production" }]`)
limit       | Limits the number of returned objects (by defauts returns all records)
page        | Returns one page of records at a time (by default, sets the `limit` parameter to 10)

## Create a new node

Creates a new node.

### HTTP Request

`POST /api/v1/node`

### JSON Parameters

Parameter | Description
--------- | -----------
cluster  | (required) Cluster UUID to which the newly created node will belong
name | (required) Name of the node
region | (required) The name identifier of the region where the node will be deployed (see [Regions](/api/regions))
node_size | (required) Name identifier of the node size object desired for the node (see [Node Sizes](/api/node_sizes))
labels | (optional) List of labels to identify the node (see [Labels](/api/labels))

### Get an existing node

Get all the informations of a specific node.

### HTTP Request

`GET /api/v1/node/:uuid/`

### Query Parameters

Parameter | Description
--------- | -----------
uuid | The UUID of the node to retrieve

## Destroy a cluster

Remove a node from the cluster and destroy the node itself. This is irreversible.

### HTTP Request

`DELETE /api/v1/node/:uuid/`

### Query Parameters

Parameter | Description
--------- | -----------
uuid | The UUID of the node to retrieve
