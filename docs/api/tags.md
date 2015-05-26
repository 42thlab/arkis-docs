# Tags

Tags are key/value pairs associated to particular nodes.

When creating a container, the user can select a subset of nodes that should
be considered for scheduling by specifying one or more sets of matching
key/value pairs.

This approach has several practical use cases such as:

- Selecting specific host properties (such as `storage=ssd`, in order to schedule
containers on specific hardware).
- Tagging nodes based on their physical location (`region=us-east`, to force
containers to run on a given location).
- Logical cluster partitioning (`environment=production`, to split a cluster into
sub-clusters with different properties).
