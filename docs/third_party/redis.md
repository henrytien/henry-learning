# Redis



## Redis keys

### [EXPIRE](https://redis.io/commands/expire/)

#### How expires are handled in the replication link and AOF file

In order to obtain a correct behavior without sacrificing consistency, when a key expires, a [`DEL`](https://redis.io/commands/del) operation is synthesized in both the AOF file and gains all the attached replicas nodes. This way the expiration process is centralized in the master instance, and there is no chance of consistency errors.

However while the replicas connected to a master will not expire keys independently (but will wait for the [`DEL`](https://redis.io/commands/del) coming from the master), they'll still take the full state of the expires existing in the dataset, so when a replica is elected to master it will be able to expire the keys independently, fully acting as a master.





