# Pewlett_Hackard_Analysis

## Challenge Overview

### Purpose:

The purpose of this analysis is to determine the number of retiring employees who were born between January 1, 1952 and December 31, 1955 per title by their most recent job title, 
and identify employees who are eligible to participate in a mentorship program.
   
   
## Results: 

- Some employees that are included in the "retirement_titles" table no longer work for the company. Those people who have left are identified by the "to_date" column.

![1  Retirement_Titles](https://user-images.githubusercontent.com/89308251/136643098-1d194f1f-c184-4050-ad51-bef2d8cf5bc3.png)



- There are duplicate entries for some employees because they have switched titles over the years, so I used "DISTINCT ON" on the "unique_titles" table to keep only the most recent title of each employee.

![2  Unique_Titles](https://user-images.githubusercontent.com/89308251/136643101-f9ac3acd-b76f-42c7-b046-6e8e2dd2988f.png)



- There is a very high demand for new employees to become Senior Engineer, Senior Staff, Engineer, and Staff while there are only 2 positions for Manager. 

![3  Retiring_Titles](https://user-images.githubusercontent.com/89308251/136643106-20e0a60d-8c7d-4e6d-a8b2-2c87093e0596.png)



- The number of retiring employees who are eligible to become mentors is 1,549 people.

![4  Mentorship_Eligibilty](https://user-images.githubusercontent.com/89308251/136643109-05822c85-00ef-43f0-bf71-e2ee1f071b38.png)


 
 
## Summary: 

- How many roles will need to be filled as the "silver tsunami" begins to make an impact?
   
   
   - > There are 90,398 roles that will need to be filled according to the result on Deliverable 1 which included people who no longer work in the company.
   
   ![5 1 Number_all_retire_emp](https://user-images.githubusercontent.com/89308251/136643189-0931f87d-43bc-426b-9945-583523f547aa.png)


  
   - > However, there are 72,458 roles that will need to be filled if we exclude people who no longer work for the company or who are immediately about to retire.

   ![5 2 Number_all_retire_emp](https://user-images.githubusercontent.com/89308251/136643118-9f6e31d0-d297-4183-8dba-98f262b973f8.png)

 
    
- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

   - Since currently there are 72,458 roles needed to be filled for the next generation of Pewlett Hackard employees and there are 1,549 qualified mentors, 
this means that there must be 1 mentor per 46-47 new employees. In my opinion, it would be tough to train a lot of people at the same time which may affect the quality of mentoring that the new employee will get in a negative way.
   - There are many ways to solve this situation. For example: 
      - The company could expand the eligibility to not limit employees who were born only in 1965 so the company could get enough mentors.
      - The mentor might have to split new employees into smaller rooms with 23-24 people and train them in different weeks.     
![7  emps_per_mentor](https://user-images.githubusercontent.com/89308251/136643685-7a79cd5e-eeb3-43f1-93cb-2d8e2f9db3b8.png)


