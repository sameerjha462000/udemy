1. This section was focused on how to register a bean during runtime.
2. This is done through `registerBean()` function. This function takes 3 parameters -- 
   <br>
   (a) `name` of the bean <br>
   (b) `class` of the bean <br>
   (c) `supplier` of the bean
3. `Supplier` of a class gives us the instance of the class. It is an arrow function which takes no parameters but returns an instance of the class.
    <br>
    To get an instance from the `Supplier` interface we use the `get()` method. Also, note that it returns the same instance again and again.
    
    <br>
    Example := 
    <br>
    
    ```
    Supplier<Person> s3 = () -> {
        return new Person("David", 46);
     };

    var p3 = s3.get(); // Would return an instance of the Person with name as "David" and age as "46"
    var p4 = s3.get(); // "David" "46"
    System.out.println(p3 == p4); // true
    ```