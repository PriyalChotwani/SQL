#### The total score of a hacker is the sum of their maximum scores for all of the challenges. Write a query to print the hacker_id, name, and total score of the hackers ordered by the descending score. If more than one hacker achieved the same total score, then sort the result by ascending hacker_id. Exclude all hackers with a total score of  from your result.
```select h.hacker_id, h.name, sum(m_score) as total_score from Hackers as h 
    left join (select hacker_id, max(score) as m_score from Submissions group by hacker_id, challenge_id) as max_score 
      on h.hacker_id=max_score.hacker_id 
      group by h.hacker_id, h.name having total_score>0   
      order by total_score desc, h.hacker_id asc 
```
or 

```Select hacker_id, name, sum(m_score) as total_score from 
    (Select h.hacker_id, h.name, max(s.score) as m_score from Hackers as h 
      left join Submissions as s 
        on h.hacker_id=s.hacker_id 
        group by h.hacker_id, h.name, s.challenge_id) as t 
   group by hacker_id, name having total_score>0 
   order by total_score desc, hacker_id asc ```
