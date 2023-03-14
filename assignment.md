## Assignment

### Brief

Create a new file called assignment.sql and save the solution there.

Create a new table called users and it should the following columns:
- id
- username
- password
- email
- firstName
- lastName

Create a new table called countries and it should have the following columns:
- id
- name

Create a new table called addresses and it should the following columns:
- id
- user_id (referencing users id column)
- country_id (referenceing countries id column)

Create 2 users and 3 countries, and populate the location table using the following data:
- user_id: 1 & country_id: 1
- user_id: 2 & country_id: 1
- user_id: 2 & country_id: 3

Identify the query needed to get the following:
1. List all the countries
2. List all user emails
3. List all user firstNames that have the letter "e" in the name.
4. List all the countries where user_id = 2 lives.

### Submission 

- Submit the URL of the GitHub Repository that contains your work.
- Should you reference the work of your classmate(s) or online resources, give them credit by adding either the name of your classmate or URL. 

### References

_Example of Referencing Classmate_

Referenced the code block below.
```js
    //this code is referenced from <source>
    function printMe(){
        console.log("I am a reference example");
    }
```

_Example of Referencing Online Resources_

- https://developer.mozilla.org/en-US/
- https://www.w3schools.com/html/
- https://stackoverflow.com/questions/14494747/how-to-add-images-to-readme-md-on-github

