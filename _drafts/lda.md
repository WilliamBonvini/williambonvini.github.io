---
title: "A test draft"
layout: post
---

# lda EXPLAINED

Formally we define the following terms:

* A *word* is the basic unit of discrete data, defined to be an item from a vocabulary indexed by $\{1, \dots ,V\}$.   
  We represent words using unit-basis vectors that have a single component equal to one and all other components equal to zero.   
  Thus, using superscripts to denote components, the $v$th word in the vocabulary is represented by a $V$-vector $w$ such taht $w^v=1$ and $w^u=0$ for $u\neq v$.
* A *document* is a sequence of $N$ words denoted by $\mathbf{w}= (w_1,w_2, \dots,w_n)$, where $w_n$ is the $n$th word in the sequence.
* A *corpus* is a collection of $M$ documents denoted by $= \{\mathbf{w_1}, \mathbf{w_2}, \dots, \mathbf{w_M}\}$.

We wish to find a probabilistic model of a corpus that not only assigns high probability to members of the corpus, but also assigns high probability to other "similar" documents.



What is LDA?

Latent Dirichlet Allocation (LDA) is a generative probabilistic model of a corpus.  
The basic idea is that documents are represented as random mixtures over latent topics, where each topic is characterised by a distribution over words