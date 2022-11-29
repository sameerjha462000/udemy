1. Generally, The Spring selects the bean on the basis of the name of the class.
2. If there are multiple beans of the same class, then it selects the bean whose name matches with the name of parameter passed or field name.
3. If the field name is also `NOT` matched, then the bean with the `@Primary` annotation is selected.
4. If there is `NO` bean with `@Primary` annotation then we must use the `@Qualifier` annotation and pass the name of the bean which we want to select.