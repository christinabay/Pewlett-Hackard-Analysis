# Pewlett Hackard Analysis Deliverable 3

## 1. Overview 
The purpose of this analysis was to evaluate which positions will need to be filled in the near fiture at Pewlett Hackard. HR hopes to get ahead of job openings due to upcoming retirements. They're hoping to understand who will be retiring and how many positions will need to be filled.

## 2. Results
- The number of roles at Pewlett Hackard that will need to be filled by the "silver tsunami" generation retires is 90,398. This can be seen with the query below:

<img src="Resources/unique_titles_ss.png">

This was done by querying the COUNT from the unique_titles table. 

- The next question was to avoid an issue like this from causing workflow disturbances in the future, are there enough qualified, retirement-ready employees to mentor the next generation of PH employees? The answer to that can be seen below:

<img src="Resources/mentorship_eligibility_ss.png">

- Running a COUNT query of the mentorship_eligibility table, we see that there are only 1,549 employees qualified to mentor the next generation of PH employees. This leaves a large number of open positions for PH. 1,549 mentors is simply not enough to train 90,398 new or promoted employees. 

- If PH HR department wanted to get a better understanding of the retirement groups so to better prepare for position openings, it might be smart to run an analysis on how many people are leaving from each specific department. That way, department heads can be tasked with appointing mentors within each department that are responsible for training a handful of employees during their time at the company. 
- Retention data for employees leaving/quitting for non-retiring reasons, and the # of employees hired each year by department, might also be important information. Understanding the full picture of why positions are open and which are harder to fill might reveal information about department inefficiencies and poor management. These are actionable efficiency items that will save PH a lot of money in the long run, and lead to a better employee experience. 
