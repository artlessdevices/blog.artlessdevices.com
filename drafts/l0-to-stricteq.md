---
title: From License Zero to strictEq
summary: ""
author: kemitchell
email: kyle@artlessdevices.com
---

In the middle of August, 2020, I announced I would shut License Zero down in favor of a new, evolved service.  That service, strictEq, has launched at [strictEq.com](https://strictEq.com).

Why the change?  First, to evolve the design of the service.  Second, to develop a new and different brand and presentation.  A few quick notes on each.

I spent a lot of time earlier this year pruning License Zero down.  I lopped off the idea of users mostly finding and buying licenses through a command-line tool.  I dropped support for paid relicensing transactions.  The result was a smaller, simpler service that was easier to figure out, document, and explain.

If one theme sounded through, it was shedding complications meant to keep the customer experience quick and easy no matter how many licenses needed to be managed.  Early on, showing that was possible came out early in many conversations.  Technically, developers seemed to want an approach that could cope with the breadth and depth of npm-managed and later Cargo-managed project dependency trees.  Designs that couldn't help prolific authors of transitive dependencies seemed like just more of the same pressure to raise money and start a company, or take a job from someone who had.  Most folks thinking about the funding problem were still thinking about it systemically, from the top down, as designers.

But having made the point on "scalability", in code and in print, reality set in.  There was no scale.  Creating broad change couldn't happen without confidence that the system could take it, but achieving confidence didn't automatically bestow critical mass.  The result was confidence, but also a mound of features solving problems the system didn't have, but could someday.  So helping new people understand those design choices worked more like proselytizing a faith than teaching a trade.  "This is how things will work, when they work better."  Instead of "This is how things are working better for us now."

Having rolled a lot of that work back, I found myself with a simpler License Zero and a lot of complexity in the budget.  Lots of folks brought ideas on how to spend that budget.  License Zero should become a full-service agency, taking over money-management and marketing duties for developers.  License Zero should become a general license marketplace for all kinds of projects.  License Zero should integrate with Patreon, or GitHub Sponsors, or OpenCollective, or all of them.  License Zero should become the first instance of a general protocol for mixed free and paid licensing.
