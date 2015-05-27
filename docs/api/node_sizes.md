# Node Sizes

A node size is a representation of an instance size supported in a certain
region.

### Attributes

Attribute | Description
--------- | -----------
name | An identifier for the node size
label | A user-friendly name for the node size
region | Region name identifier
available | Whether the region is currently available for new deployments
node_sizes | A list of node sizes UUID available in the region

## List all node sizes

List all node sizes currently supported. Returns a list of `NodeSize` objects.

### HTTP Request

`GET /api/v1/nodesizes`

### Query Parameters

Parameter | Description
--------- | -----------
name | Filter by node type name
region | Filter by region identifier
available | Filter by availability (`true`/`false`)
limit | Limits the number of returned objects (by defauts returns all records)
page | Returns one page of records at a time (by default, sets the `limit` parameter to 10)
