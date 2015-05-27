# Regions

A region is a representation of an entire or a subset of a data center.
It contains one and more node sizes.

### Attributes

Attribute | Description
--------- | -----------
name | An identifier for the region
label | A user-friendly name for the region
available | Whether the region is currently available for new deployments
node_sizes | A list of node types UUID available in the region

## List all regions

List all regions currently supported. Returns a list of `Region` objects.

### HTTP Request

`GET /api/v1/regions`

### Query Parameters

Parameter | Description
--------- | -----------
name | Filter by region name
available | Filter by availability (`true`/`false`)
node_sizes | Filter by node sizes currently available
limit | Limits the number of returned objects (by defauts returns all records)
page | Returns one page of records at a time (by default, sets the `limit` parameter to 10)
