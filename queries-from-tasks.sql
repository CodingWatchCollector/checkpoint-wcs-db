-- All job offers
SELECT * FROM Offers;

-- All jobs by city (Paris)
SELECT * FROM Offers
WHERE city = "Paris";

-- Info about all candidates for 1 offer
SELECT c.*
FROM Candidates c 
JOIN CandidatesOffers co ON c.id = co.candidate_id 
WHERE co.offer_id = 1;

-- Info about all candidates for all offers from 1 enterprise
SELECT c.*
FROM Candidates c 
JOIN CandidatesOffers co ON c.id = co.candidate_id 
JOIN Offers o ON o.id = co.offer_id 
WHERE o.fk_enterprise = 1;