@isTest
public with sharing class RestCalloutsMock implements HttpCalloutMock {
    public HttpResponse respond(HttpRequest Request){
        //get animals mock
        if (Request.getEndpoint() == 'https://th-apex-http-callout.herokuapp.com/animals' && Request.getMethod() == 'GET') {
            HttpResponse response = new HttpResponse();
            response.setStatus('OK');
            response.setStatusCode(200);
            String body = '{"animals": ["majestic badger","fluffy bunny","scary bear","chicken"]}';
            response.setBody(body);
            return response;
        }
        //get products mock
        else if (Request.getEndpoint() == 'https://dummyjson.com/products' && Request.getMethod() == 'GET') {
            HttpResponse response = new HttpResponse();
            response.setStatus('OK');
            response.setStatusCode(200);
            String body = '{"products":[{"id":1,"title":"iPhone 9","description":"An apple mobile which is nothing like apple","price":549,"discountPercentage":12.96,"rating":4.69,"stock":94,"brand":"Apple","category":"smartphones","thumbnail":"https://i.dummyjson.com/data/products/1/thumbnail.jpg","images":["https://i.dummyjson.com/data/products/1/1.jpg","https://i.dummyjson.com/data/products/1/2.jpg","https://i.dummyjson.com/data/products/1/3.jpg","https://i.dummyjson.com/data/products/1/4.jpg","https://i.dummyjson.com/data/products/1/thumbnail.jpg"]},{"id":2,"title":"iPhone X","description":"SIM-Free, Model A19211 6.5-inch Super Retina HD display with OLED technology A12 Bionic chip with ...","price":899,"discountPercentage":17.94,"rating":4.44,"stock":34,"brand":"Apple","category":"smartphones","thumbnail":"https://i.dummyjson.com/data/products/2/thumbnail.jpg","images":["https://i.dummyjson.com/data/products/2/1.jpg","https://i.dummyjson.com/data/products/2/2.jpg","https://i.dummyjson.com/data/products/2/3.jpg","https://i.dummyjson.com/data/products/2/thumbnail.jpg"]}],"total":100,"skip":0,"limit":30}';
            response.setBody(body);
            return response;
        }
        //get airlines mock
        else if (request.getEndpoint().contains('https://api.instantwebtools.net/v1/airlines/') && Request.getMethod() == 'GET') {
            HttpResponse response = new HttpResponse();
            response.setStatus('OK');
            response.setStatusCode(200);
            String body = '{"id":1,"name":"Sri Lankan Airways","country":"Sri Lanka","logo":"https://upload.wikimedia.org/wikipedia/en/thumb/9/9b/Qatar_Airways_Logo.svg/sri_lanka.png","slogan":"From Sri Lanka","head_quaters":"Katunayake, Sri Lanka","website":"www.srilankaairways.com","established":"1990"}';
            response.setBody(body);
            return response;
        }
        //post product mock
        else if (Request.getEndpoint() == 'https://dummyjson.com/products/add' && Request.getMethod() == 'POST') {
            HttpResponse response = new HttpResponse();
            response.setStatus('OK');
            response.setStatusCode(200);
            String body = '{"id":1,"title":"iPhone 9","description":"An apple mobile which is nothing like apple","price":549,"discountPercentage":12.96,"rating":4.69,"stock":94,"brand":"Apple","category":"smartphones","thumbnail":"https://i.dummyjson.com/data/products/1/thumbnail.jpg","images":["https://i.dummyjson.com/data/products/1/1.jpg","https://i.dummyjson.com/data/products/1/2.jpg","https://i.dummyjson.com/data/products/1/3.jpg","https://i.dummyjson.com/data/products/1/4.jpg","https://i.dummyjson.com/data/products/1/thumbnail.jpg"]}';
            response.setBody(body);
            return response;
        }
        //post ToDo mock
        else if (Request.getEndpoint() == 'https://dummyjson.com/todos/add' && Request.getMethod() == 'POST') {
            HttpResponse response = new HttpResponse();
            response.setStatus('OK');
            response.setStatusCode(200);
            String body = '{"id": 151,"todo": "Use DummyJSON in the project","completed": false,"userId": 5}';
            response.setBody(body);
            return response;
        }
        // Get users mock
        else if (Request.getEndpoint() == 'https://dummyjson.com/users' && Request.getMethod() == 'GET') {
            HttpResponse response = new HttpResponse();
            response.setStatus('OK');
            response.setStatusCode(200);
            String body = '{"users":[{"id":1,"firstName":"Terry","lastName":"Medhurst","maidenName":"Smitham","age":50,"gender":"male","email":"atuny0@sohu.com","phone":"+63 791 675 8914","username":"atuny0","password":"9uQFF1Lh","birthDate":"2000-12-25","image":"https://robohash.org/hicveldicta.png"},{"id":2,"firstName":"Sheldon","lastName":"Quigley","maidenName":"Cole","age":28,"gender":"male","email":"hbingley1@plala.or.jp","phone":"+7 813 117 7139","username":"hbingley1","password":"CQutx25i8r","birthDate":"2003-08-02","image":"https://robohash.org/doloremquesintcorrupti.png"}],"total":100,"skip":0,"limit":30}';
            response.setBody(body);
            return response;
        }

        //update ToDo mock
        else if (request.getEndpoint().contains('arhttps://dummyjson.com/todos/g0') && Request.getMethod() == 'PUT') {
            HttpResponse response = new HttpResponse();
            response.setStatus('OK');
            response.setStatusCode(200);
            String body = '{"id": "1","todo": "Do something nice for someone I care about","completed": false, // complete status was changed "userId": 26}';
            response.setBody(body);
            return response;
        }
        return null;
    }
}
