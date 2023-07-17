public with sharing class RestCallouts {
    //End Point : https://th-apex-http-callout.herokuapp.com/animals
    //Http Method: GET
    public static HttpResponse getAnimals(){
        //1. Prepare HttpRequest and wrap all the necessary data in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('GET');

        //2. Prepare Internet 
        Http http = new Http();

        //3. Send the request over the Internet in order to recieve the response
        HttpResponse response = http.send(request);

        //4. Process the response
        System.debug(response.getStatus());
        System.debug(response.getStatusCode());
        System.debug(response.getBody());
        return response;
    }

    //End Point : https://th-apex-http-callout.herokuapp.com/animals
    //Http Method: GET
    public static HttpResponse getProducts() {
        //1. Prepare HttpRequest and wrap all the necessary data in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://dummyjson.com/products');
        request.setMethod('GET');
        //2. Prepare Internet
        Http http = new Http();

        //3. Send the request over the Internet in order to recieve the response
        HttpResponse response = http.send(request);

        //4. Process the response
        if (response.getStatusCode() == 200) {
            String jsonString = response.getBody();
            
            //convert the json String in to the sobject
            EcommerceProductWrapper epw = (EcommerceProductWrapper)JSON.deserialize(jsonString, EcommerceProductWrapper.class);
            List<EcommerceProductWrapper.ProductWrapper> pws = epw.products;
            List<Ecommerce_Product__c> products = new List<Ecommerce_Product__c>();
            for (EcommerceProductWrapper.ProductWrapper pw : pws) {
                Ecommerce_Product__c ep = new Ecommerce_Product__c();
                ep.Product_Id__c = pw.Id;
                ep.Name = pw.title;
                ep.Description__c = pw.description;
                ep.Discount_Percentage__c = pw.discountPercentage;
                ep.Rating__c = pw.rating;
                ep.Stock__c = pw.stock;
                ep.Brand__c = pw.brand;
                ep.Category__c = pw.category;
                ep.Thumbnail__c = pw.thumbnail;
                products.Add(ep);
            }
            //insert record 
            try {
                Insert products;
            } catch (Exception ex) {
                System.debug(ex.getMessage());
            }
        }
        return response;
    }

    //End Point : https://api.instantwebtools.net/v1/airlines
    //Http Method : GET
    public static HttpResponse getAirlines(Integer airlineId){
        //1. Prepare HttpRequest and wrap all the necessary data in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://api.instantwebtools.net/v1/airlines/' + airlineId);
        request.setMethod('GET');
        //2. Prepare Internet
        Http http = new Http();
         //3. Send the request over the Internet in order to recieve the response
         HttpResponse response = http.send(request);
         //4. Process the response
         if(response.getStatusCode() == 200){
            String jsonString = response.getBody();
            //System.debug(jsonString);
            //Convert json string to sobjec
            AirlinesWrapper aw = (AirlinesWrapper)JSON.deserialize(jsonString, AirlinesWrapper.class);
            Airlines__c airline = new Airlines__c();
            airline.Airline_Id__c = aw.id;
            airline.Name = aw.name;
            airline.Country__c = aw.country;
            airline.Logo_URL__c = aw.logo;
            airline.Slogan__c = aw.slogan;
            airline.Head_Quaters__c = aw.head_quaters;
            airline.Website__c = aw.website;
            airline.Established__c = aw.established;
            // insert airline
            try{
                insert airline;
            } catch(Exception ex){
                System.debug(ex.getMessage());
            }

         }
         return response;
    }

    //Endpoint: https://dummyjson.com/products/add
    //Http Method: POST

    public static HttpResponse postProducts(Id proIds){
        //1. Prepare HttpRequest and wrap all the necessary data in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://dummyjson.com/products/add');
        request.setMethod('POST');
        //prepare Json
        Ecommerce_Product__c ep = [SELECT Name, Brand__c, Category__c, Description__c, Discount_Percentage__c,Price__c, Product_Id__c, 
                               Rating__c, Stock__c, Thumbnail__c 
                                FROM Ecommerce_Product__c 
                                WHERE Id = :proIds ];
        EcommerceProductWrapper.ProductWrapper pw = new EcommerceProductWrapper.ProductWrapper();
        pw.brand = ep.Brand__c;
        pw.category = ep.Category__c;
        pw.description = ep.Description__c;
        pw.discountPercentage = ep.Discount_Percentage__c;
        pw.price = Integer.valueOf(ep.Price__c);
        pw.rating = ep.Rating__c;
        pw.stock = Integer.valueOf(ep.Stock__c);
        pw.thumbnail = ep.Thumbnail__c;
        pw.title = ep.Name;
        String body = JSON.serialize(pw);
        request.setBody(body);
        request.setHeader('Content-Type', 'application/json');

        //2. Prepare Internet
        Http http = new Http();

        //3. Send the request over the Internet in order to recieve the response
        HttpResponse response = http.send(request);

        //4.Process the response
        System.debug(response.getStatusCode());
        if(response.getStatusCode() == 200 || response.getStatusCode() == 201){
            String jsonString = response.getBody();
            EcommerceProductWrapper.ProductWrapper pwNew = (EcommerceProductWrapper.ProductWrapper)JSON.deserialize(jsonString, EcommerceProductWrapper.ProductWrapper.class);
            ep.Product_Id__c = pwNew.id;
            update ep;
        }
        return response;

    }

   // EndPoint : https://dummyjson.com/todos/add
   // Http Method : POST
    @future(callout=true)
    public static void postToDo(Id toDoId) {
        //1. Prepare HttpRequest and wrap all the necessary data in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://dummyjson.com/todos/add');
        request.setMethod('POST');

        ToDo__c todo = [SELECT Name, ToDo_Id__c, User_Id__c, Completed__c FROM ToDo__c WHERE Id = :toDoId LIMIT 1];
        ToDOWrapper tw = new TodoWrapper();
        tw.completed = todo.Completed__c;
        tw.todo = todo.Name;
        tw.userId = Integer.valueOf(todo.User_ID__c) ;
        String body = JSON.serialize(tw);
        request.setBody(body);
        request.setHeader('Content-Type', 'application/json');
        //2. Prepare Internet
        Http http = new Http();
        //3. Send the request over the Internet in order to recieve the response
        HttpResponse response = http.send(request);
        //4.Process the response
        System.debug(response.getStatusCode());
        if (response.getStatusCode() == 200 || response.getStatusCode() == 201) {
            String jsonString = response.getBody();
            ToDoWrapper newWrap = (ToDoWrapper)JSON.deserialize(jsonString, ToDoWrapper.class);
            todo.ToDo_Id__c = newWrap.id;
            update todo;
        }
        System.debug('completed successfully');
    }

    // EndPoint : https://dummyjson.com/todos/{id}
   // Http Method : PUT
   @future(callout=true)
   public static void updateToDo(Id toDoId) {
       //1. Prepare HttpRequest and wrap all the necessary data in it
       ToDo__c todo = [SELECT Name, ToDo_Id__c, User_Id__c, Completed__c FROM ToDo__c WHERE Id = :toDoId LIMIT 1];
       //1. Prepare HttpRequest and wrap all the necessary data in it
       HttpRequest request = new HttpRequest();
       request.setEndpoint('https://dummyjson.com/todos/'+todo.ToDo_Id__c);
       request.setMethod('PUT');
       String body = '{"completed":' + todo.Completed__c + '}';
       System.debug(body);
       request.setBody(body);
       request.setHeader('Content-Type', 'application/json');
        //2. Prepare Internet
        Http http = new Http();
        //3. Send the request over the Internet in order to recieve the response
        HttpResponse response = http.send(request);
        //4.Process the response
        if (response.getStatusCode() == 200 || response.getStatusCode() == 201) {
            System.debug('Date has been sent');
        } else {
            System.debug(response.getStatusCode());
        }
   }
   // EndPoint : https://dummyjson.com/todos/{id}
   // Http Method : PUT
   @future(callout=true)
   public static void deleteToDo(Integer toDoId) {
       //ToDo__c todo = [SELECT Name, ToDo_Id__c, User_Id__c, Completed__c FROM ToDo__c WHERE Id = :toDoId LIMIT 1];
       //1. Prepare HttpRequest and wrap all the necessary data in it
       HttpRequest Request = new HttpRequest();
       Request.setEndpoint('https://dummyjson.com/todos/'+toDoId);
       Request.setMethod('DELETE');
        //2. Prepare Internet
        Http http = new Http();
        //3. Send the request over the Internet in order to recieve the response
        HttpResponse response = http.send(request);
        //4.Process the response
        System.debug(response.getStatusCode());
   }

    public static HttpResponse getUserds() {
        //1. Prepare HttpRequest and wrap all the necessary data in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://dummyjson.com/users');
        request.setMethod('GET');
        //2. Prepare Internet
        Http http = new Http();
        //3. Send the request over the Internet in order to recieve the response
        HttpResponse response = http.send(request);
        //4.Process the response
        if (response.getStatusCode() == 200 ) {
            String jsonString = response.getBody();
            GetUserWrapper guw = (GetUserWrapper)JSON.deserialize(jsonString, GetUserWrapper.class);
            List<GetUserWrapper.UserWrapper> uw = guw.users;
            List<Employee__c> newEmp = new List<Employee__c>();
            for (GetUserWrapper.UserWrapper eachemp : uw) {
                Employee__c e = new Employee__c();
                e.User_Name__c = eachemp.username;
                e.First_Name__c = eachemp.firstName;
                e.Last_Name__c = eachemp.lastName;
                e.Maiden_Name__c = eachemp.maidenName;
                e.Age__c = eachemp.age;
                e.Gender__c = eachemp.gender;
                e.Email__c = eachemp.email;
                e.Phone_No__c = eachemp.phone;
                e.Birth_Date__c = Date.valueOf(eachemp.birthDate);
                e.Password__c = eachemp.password;
                newEmp.add(e);
            }
            try {
                insert newEmp;
            } catch (Exception ex) {
                System.debug(ex.getMessage());
            }
        }
        return response;
    }
  
}