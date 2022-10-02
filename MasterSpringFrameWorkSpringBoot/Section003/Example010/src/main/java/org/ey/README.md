1. In earlier versions of Spring, beans were created using XML file. We should also know about this method as we might encounter this type of project in the future.
2. To create beans using XMLs, we use `ClassPathXmlApplicationContext`. We create beans in the `beans.xml` under the `resources`(do not create a scratch file, just create a normal file and then rename it to a `xml` file).
3. We create a bean using the `bean` tag. The `id` attribute takes the name of the bean and the `class` attribute takes the path to the class of the bean.
4. The properties are set using the `property` tag where in we mention the name of the property using the `name` attribute and the corresponding value using the `value` attribute.
5. The `bean` tag uses the `default` constructor and the `setters` to create the instance and set the values of the fields.
6. So it is necessary that we make the `setters` as `public` as otherwise they would not be visible from the `resources`.