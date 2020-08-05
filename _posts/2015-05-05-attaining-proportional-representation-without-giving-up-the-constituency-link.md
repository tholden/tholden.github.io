---
id: 339
title: Attaining proportional representation without giving up the constituency link
date: 2015-05-05T14:23:49+01:00
author: Tom
layout: post
guid: http://www.tholden.org/?p=339
permalink: /2015/05/05/attaining-proportional-representation-without-giving-up-the-constituency-link/
spacious_page_layout:
  - default_layout
dsq_thread_id:
  - "6176243780"
categories:
  - Blog
---
Traditional forms of proportional representation (PR) lead to one or more of the following undesirable features:
<ul>
	<li>large multi-member constituencies (undesirable as it leads to weaker ties to any particular MP, and because it inevitably results in very disparate regions being lumped in together),</li>
	<li>MPs without a constituency, or with a "regional" constituency that overlaps standard ones (undesirable as such MPs have different workloads, and weakened responsibilities to represent those who elected them),</li>
	<li>party lists which make it impossible to vote against particular individuals without voting against their party (undesirable as it should be the voters, not political parties, who have the final say as to which individuals get elected).</li>
</ul>
Given these problems, one might be tempted to abandon PR entirely. In this post, I will give a mechanism without any of these problems, which nonetheless comes close to proportionality.

In my proposed mechanism, constituencies would remain their current size, and there would be no reason to reshape their boundaries that is not already present. On election day, voters would be presented with two ballot papers. The first paper would ask something along these lines:
<blockquote>"Which of the candidates below would you be prepared to have as your MP? Please place an X next to the name of any candidate who you would be prepared to have representing you in parliament. You may place as many Xs as you wish, indicating your support for no, one or many candidates."</blockquote>
Along the lines of standard <a href="https://en.wikipedia.org/wiki/Approval_voting">approval voting</a>, the number of Xs for each candidate would be summed up, in order to produce a percentage approval for each local candidate. The candidate with the highest approval would be selected if one of the following was true:
<ul>
	<li>At most one candidate obtained over 50% approval.</li>
	<li>Two or more candidates obtained over 50% approval, but the one with the highest approval was not affiliated to a national political party.</li>
	<li>Two or more candidates obtained over 50% approval, but all or these candidates except perhaps the one with the highest approval were not affiliated to a national political party.</li>
	<li>The vote was for a by-election.</li>
</ul>
However, if none of these situations obtain, so multiple candidates from national political parties obtained over 50% approval, then each of them would be considered a possibility, and the one selected would be determined by trying to match the distribution of MPs to voters overall preferences, as determined by the second ballot paper.

This second ballot paper would ask something along these lines:
<blockquote>"Which political party would you like to form a government? Please place an X next to the name of the single political party you would like to lead the government. You should place precisely one X on this ballot paper."</blockquote>
These ballot papers would be summed up nationally, not at constituency level, in order to give a picture of what a representative parliament ought to look like. Then, in the constituencies in which multiple candidates obtained 50% approval, candidates would be selected in order to bring the distribution in parliament as close as possible to the results of the second paper. The technical details of this are given below, but as a practical way of understanding how this would work, suppose that in the eventual distribution of MPs, party A was over-represented and party B was under-represented, according to the proportionality criterion. Then in any constituency in which MPs from both party A and party B obtained over 50% approval, the candidate from party B would be selected, even if they had lower approval that the candidate from party A. While selecting candidates with slightly lower approval may not be ideal, any candidate with over 50% approval is supported by a majority of voters, and so may legitimately represent the views of the constituency's voters.

A natural concern with this system is that the result might not be fully proportional, as too few constituencies would have multiple candidates with over 50% approval. However, the system is sure to be an improvement over the current one at least, and sacrificing full proportionality seems a small price to play to preserve the constituency link. Furthermore, given the make up of the UK political landscape, in fact many constituencies might end up with multiple candidates with over 50% approval. For example, many Labour and Conservative voters would also support a Liberal Democrat MP, so we can expect support for the Liberal Democrats on the first ballot to be high. However, given that they would have relatively low support on the second ballot, they would still not be over-represented in parliament. More generally, this system gives voters greater freedom to vote for minority candidates on both ballots. Indeed, a good approximation to a voter's optimal voting strategy on the first ballot is to vote for whichever of the expected winner and the expected runner-up they prefer most, and then to also vote for every candidate they prefer to these. This means that parties like the Greens or UKIP may be able to get 50% approval in sufficiently left/right wing constituencies, despite not having a track record there. Again though, it is worth stressing that such parties will not obtain significant numbers of MPs unless they can also convince the broader electorate on the second ballot.

I conclude by giving the full details of the procedure for assigning seats and ensuring proportionality. First, we make an initial allocation by assigning each constituency to the candidate who obtained the highest approval, breaking any exact ties by the result of the second ballot. Next, we form a list of all of the candidates from national political parties who obtained over 50% approval in their constituency, but are not selected to win in it, and we give them a score equal to their approval minus the approval of the candidate currently allocated to win in their constituency. We then sort this list, and step through it starting with the highest score. We continue stepping through until we find a candidate from a political party that is under-represented nationally, where the winner of that constituency is from a political party that is less under-represented (comparing percentage errors, not numbers of seats). If after changing the winner of the seat to the currently considered candidate, it would still be true that that candidate's political party is more under-represented than that of the previously allocated winner, then we make the swap, otherwise we continue searching through the list. Once we have made a swap, the new winner is removed from the list, and the old winner is added to it, and we recommence our search from the start of the list. Eventually, we will complete a scan of the entire list without making a single swap, at which point the algorithm terminates, and the current allocation of winners to seats is accepted.

To me, this seems like a good compromise between the conflicting aims of proportionality, simplicity, the representation of preferences and the preservation of constituency links. Are there any obvious flaws that I have missed?