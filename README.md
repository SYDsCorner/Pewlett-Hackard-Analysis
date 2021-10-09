# Pewlett_Hackard_Analysis

## Overview of the analysis

### Purpose:

   The purpose of this analysis is to determine the number of retiring employees who were born between January 1, 1952 and December 31, 1955 per title by their most recent job title, 
and identify employees who are eligible to participate in a mentorship program.
   
   
## Results: 

- Some employees that are included in the "retirement_titles" table no longer work for the company. Those people who have left are identified by the "to_date" column.

![1 Retirement_Titles](https://user-images.githubusercontent.com/89308251/136641468-5accff9c-bf86-485c-8221-a9d0877bde9e.png)


- There are duplicate entries for some employees because they have switched titles over the years, so I used "DISTINCT ON" on the "unique_titles" table to keep only the most recent title of each employee.

![2 Unique_Titles](https://user-images.githubusercontent.com/89308251/136641470-4de65248-32d4-45eb-9a26-11d93387a617.png)


- There is a very high demand for new employees to become Senior Engineer, Senior Staff, Engineer, and Staff while there are only 2 positions for Manager. 

![3 Retiring_Titles](https://user-images.githubusercontent.com/89308251/136641475-15c00f48-8da6-466c-91a2-d03985c08d99.png)


- The number of retiring employees who are eligible to become mentors is 1,549 people.


![4 Mentorship_Eligibilty](https://user-images.githubusercontent.com/89308251/136641478-ef8760a5-234c-49a6-81a6-0ce7c8d37fb9.png)

![Qualified_mentor](https://user-images.githubusercontent.com/89308251/136641482-a3bfe90f-5aae-4c8c-9901-2aba19aa5847.png)
 
 
## Summary: 

- How many roles will need to be filled as the "silver tsunami" begins to make an impact?
   
   > There are 90,398 roles that will need to be filled according to the result on Deliverable 1 which included people who no longer work in the company.
   
  ![Number_all_retire_emp](https://user-images.githubusercontent.com/89308251/136641436-5e34b24b-b6f3-4ef7-821b-16bc7ab8c6f2.png)

   
   > However, there are 72,458 roles that will need to be filled if you exclude people who no longer work for the company or who are immediately about to retire.

   
   ![Number_current_emp](https://user-images.githubusercontent.com/89308251/136641444-624f9ec1-2244-49cd-a862-ef017bb11596.png)

    
- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

   > Since currently there are 72,458 roles needed to be filled for the next generation of Pewlett Hackard employees and there are 1,549 qualified mentors, 
this means that there must be 1 mentor per 46-47 new employees. In my opinion, it would be tough to train a lot of people at the same time which may affect the quality of mentoring that the new employee will get in a negative way.
   > There are many ways to solve this situation. For example: 
      - The company could expand the eligibility to not limit employees who were born only in 1965 so the company could get enough mentors.
      - The mentor might have to split new employees into smaller rooms with 23-24 people and train them in different weeks.     




```
SELECT first_name, last_name
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');


```
