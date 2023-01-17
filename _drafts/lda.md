---
title: "Latent Dirichlet Allocation"
layout: post
---

# Latent Dirichlet Allocation

Sources:

* [Original paper](https://www.jmlr.org/papers/volume3/blei03a/blei03a.pdf)

Latent Dirichlet Allocation (LDA) is one of the most popular topic modelling methods out there, even though it has been published back in 2003 by David Blei, Andrew Ng, and Michael Jordan.  
Topic modelling is simply the task of identifying what topics are treated in a corpus of documents.      
Before diving into this topic let's revise a couple of prerequisities.  

### Prerequisites

##### Poisson Distribution

The Poisson distribution is a discrete probability distribution that expresses the probability of a given number of events occurring in a fixed interval of time or space if these events occur with a known constant mean rate and independently of the time since the last event.   

Example:
A call center receives an average of 180 calls per hour, 24 hours a day. The calls are independent: receiving one does not change the probability of when the next one will arrive. The number of calls received during any minute ha a Poisson probability distribution wit mean 3: with high probability the call center will receive 3 calls in a specific minute, but there is a small chance it will receive 0 or even 6.
$$
P(\text{k calls in a minute})=& \frac{\lambda^k\cdot e^{-\lambda}}{k!} = \frac{3^k\cdot e^{-3}}{k!}
\\
\\
P(\text{0 call in a minute})  &= \frac{3^0\cdot e^{-3}}{0!}=0.05
\\
P(\text{1 call in a minute}) &= \frac{3^1\cdot e^{-3}}{1!}=0.15
\\
P(\text{2 call in a minute}) &= \frac{3^2\cdot e^{-3}}{2!}=0.23
\\
P(\text{3 call in a minute}) &= \frac{3^3\cdot e^{-3}}{3!}=0.23
\\
P(\text{4 call in a minute}) &= \frac{3^4\cdot e^{-3}}{4!}=0.17
\\
  \vdots
$$
This distribution makes this assumptions:

* The occurrence of one event does not affect the probability that a second event will occur $$\to$$ events occur independently.
* Two events cannot occur at exactly the same instant; instead, at each very small sub-interval, either exactly one event occurs, or no event occurs.  

If these conditions are true, then $k$ is a Poisson random variable, and the distribution of $k$ is a Poisson distribution.

##### Dirichlet Distribution

The Dirichlet distribution is family of continuous multivariate probability distributions parametrized by a vector $\alpha$ of positive reals.  
I will explain it in a simple way, that I think makes it easy to grasp the rationale behind it.  

Do you remember the Beta distribution? It is a continuous distribution that is usually dubbed as "the probability distribution of probabilities", because it can only take values between $$0$$ and $$1$$.  The Beta distribution has two parameters: $$\alpha$$ and $$\beta$$.   

* $$\alpha$$: an integer, the higher it is, the higher the probability of success is
* $$\beta$$: an integer, the higher it is, the higher the probability of failure is

The Dirichlet distribution is a generalization of the Beta distribution. It is a probability distribution describing probabilities of outcomes. Instead of describing probability of one of two outcomes of a Bernoulli trial, like the Beta distribution does, it describes probability of $$K$$ outcomes.   
The Beta distribution is the special case of the Dirichlet distribution with $$K=2$$.  
The parameters are $$\alpha_1, \alpha_2, \dots, \alpha_K$$ all strictly positive, defined analogously to $$\alpha$$ and $$\beta$$ of the Beta distribution.



### LDA assumptions

* "bag-of-words" assumption: the order of the words in a document doesn't matter
*  documents are exchangeable: the specific ordering of the documents in a corpus can also be neglected

A classic representation theorem due to de Finetti (1990) establishes that any collection of exchangeable random variables has a representation as a mixture distribution (a mixture of two or more probability distributions).



### Notation and terminology

* A ***word*** is the basic unit of discrete data, defined to be an item from a vocabulary indexed by $\{1, \dots ,V\}$.   
  We represent words using unit-basis vectors that have a single component equal to one and all other components equal to zero.   
  Thus, using superscripts to denote components, the $v$-th word in the vocabulary is represented by a vector $w$ such that $w^v=1$ and $w^u=0$ for $u\neq v$.
* A ***document*** is a sequence of $N$ words denoted by $\mathbf{w}= (w_1,w_2, \dots,w_n)$, where $w_n$ is the $n$-th word in the sequence.
* A ***corpus*** is a collection of $M$ documents denoted by $= \{\mathbf{w_1}, \mathbf{w_2}, \dots, \mathbf{w_M}\}$.





### Algorithm



Example:

Document 1: today we will talk about the Ukrainian war...  
Document 2: The stocks of big techs are at risk...  
Document 3: The cost of energy in France has skyrocketed recently...  
Document 4: Countries are considering to switch to nuclear given that...



Document 1: the we about will Ukrainian war talk...  
Document 2: The of at stocks are big risk...  
Document 3: The of in has energy cost France recently skyrocketed...  
Document 4: are to countries considering to switch to nuclear given that...



We wish to find a probabilistic model of a corpus that not only assigns high probability to members of the corpus, but also assigns high probability to other "similar" documents.

The basic idea is that documents are represented as random mixtures over latent topics, where each topic is characterised by a distribution over words



https://towardsdatascience.com/latent-dirichlet-allocation-lda-9d1cd064ffa2