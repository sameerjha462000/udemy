1. Spring provides special annotations called Stereotype annotations which will help to create the spring beans automatically in the application context.
2. The stereotype annotations in spring are @Component, @Controller, @Service, @Repository.
3. @Component is used as general on top of any Java class. It is the base for all other annotations.
   <br>
   @Controller is used on top of the classes inside the controller layer of the MVC applications.
   <br>
   @Service is used on top of the classes inside the service layer where we write business logic and make external API calls.
   <br>
   @Repository is used on top of the classes which handles the code related to Database access related operations.