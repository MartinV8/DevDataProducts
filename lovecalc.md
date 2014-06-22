Developing Data Products - Course Project
========================================================
author: Martin
date: 18.6.2014
transition: rotate

Love Calculator
========================================================

Have you ever wondered if you should get the number of your cute classmate?
Find out now!

- Why pay money for an expensive psychic/hotline if you can check out your chances here for free?
- Is your true soulmate named "Martin"?
- Do you really believe in this nonsense?

How it works
========================================================

Just go to https://martinv.shinyapps.io/develop/.  
  
Enter your name and the name of your potential future partner into the corresponding textboxes.
Then click "Find out!", and see if it is worth to risk a lawsuit for harrassment.

Method
========================================================

The method used is based on a poisson distribution and the number of the letters 'L' 'O' 'V' and 'E' in your names. 


```r
     x1 <- grep("[Ll]", "You"); y1 <- grep("[Ll]", "Me")
     x2 <- grep("[Oo]", "You"); y2 <- grep("[Oo]", "Me")
     x3 <- grep("[Vv]", "You"); y3 <- grep("[Vv]", "Me")
     x4 <- grep("[Ee]", "You"); y4 <- grep("[Ee]", "Me")
     y <- sum(x1,x2,x3,x4,y1,y2,y3,y4)
     x <- round(100*ppois(y, 2.5),1)
```


This yields a 54.4 % likelihood of being soulmates.

Disclaimer
========================================================

This presentation was done with the RPresenter, not with slidify because
I wanted to use the functionality of my choice. Feel free to subtract points.
