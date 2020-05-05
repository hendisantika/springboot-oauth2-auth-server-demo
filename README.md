# springboot-oauth2-demo

Implements Spring OAuth2 with JWT token store

The required spring oauth data structure is created as JPA entities.

### Things to do list:
1. Clone this repository: `git clone https://github.com/hendisantika/springboot-oauth2-demo.git`
2. Go inside the folder: `cd springboot-oauth2-demo`
3. Run the application: `gradle clean bootRun --info`


### Sample data:

Client Application Credentials: **oauth2-jwt-client/admin1234**

User credentials : **admin/admin1234**

### Sample cURL Request:
```shell script
curl --location --request POST 'http://localhost:8080/oauth/token?grant_type=client_credentials' \
--header 'Authorization: Basic b2F1dGgyLWp3dC1jbGllbnQ6YWRtaW4xMjM0'
```