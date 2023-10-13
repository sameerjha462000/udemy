# Eager Vs Lazy Instantiation
1. By default, Spring will create all the beans eagerly during the startup of the application itself. This is called as `Eager` instantiation.
2. We can change the default behaviour to initialize the singleton beans lazily only when the application is trying to refer to the bean.
   <br>
   This is called `lazy` instantiation and this is done through `@lazy` annotation.
3. This is done for the business logic which is not used very often. For example  := Bean for deactivating an account could be instantiated lazily.