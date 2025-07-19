# Salesforce Apex

What is Apex?
Apex is a strongly typed, object-oriented programming language that allows developers to execute flow and transaction control statements on Salesforce servers in conjunction with calls to the API. Using syntax that looks like Java and acts like database stored procedures, Apex enables developers to add business logic to most system events, including button clicks, related record updates, and Visualforce pages. Apex code can be initiated by Web service requests and from triggers on objects.


<img width="646" height="399" alt="image" src="https://github.com/user-attachments/assets/c0868581-e3aa-44c8-bce9-7d2c0be201a9" />

# How Does Apex Work?

All Apex runs entirely on-demand on the Lightning Platform. Developers write and save Apex code to the platform, and end users trigger the execution of the Apex code via the user interface.

When a developer writes and saves Apex code to the platform, the platform application server first compiles the code into an abstract set of instructions that can be understood by the Apex runtime interpreter, and then saves those instructions as metadata.

When an end user triggers the execution of Apex, perhaps by clicking a button or accessing a Visualforce page, the platform application server retrieves the compiled instructions from the metadata and sends them through the runtime interpreter before returning the result. The end user observes no differences in execution time from standard platform requests.

<img width="1600" height="533" alt="image" src="https://github.com/user-attachments/assets/bcef702c-8a9d-499f-8353-9b4504bd556d" />

# Using Collections

Apex has the following types of collections:

Lists (arrays)
, Maps
, Sets
