1. `@PreDestroy` annotation is used on the top of the methods and Spring will make sure to call this method just before clearing and destroying the context.
2. This can be used in the scenarios where we want to close any IO resources, Database connections etc.
3. Spring borrows the `@PreDestroy` annotation also from JAVA EE.