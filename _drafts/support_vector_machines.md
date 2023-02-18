---
title: "Support Vector Machines"
layout: post
tags: classification regression machine-learning
---



# Abstract



Support Vector Machines (SVMs) are a type of machine learning algorithm that can be used for both *classification* and *regression* tasks.   
They are based on the concept of finding the maximum margin hyperplane, which separates data into different classes with the greatest possible distance. This makes SVMs particularly useful when working with high-dimensional and complex data, as they can effectively capture non-linear relationships and perform well in situations where the data is separable.   
They have been widely adopted in a variety of fields, including 

* text classification
* bioinformatics
* image classification

among others.   
In this blog post, we will provide a comprehensive overview of Support Vector Machines, including the mathematical foundations, the training process, and the various applications of this powerful machine learning tool.



# Intuition

{% fullwidth  'assets/imgs_svm/svm1.png' '' %}

SVMs aim at building a binary classifier by finding the hyperplane that is able to separate data points with the highest possible *margin*.

the *margin* is by definition the sum of the distance between the hyperplane and the closest data point of the first class, and the distance betwen the hyperplane and the closest data point of the second class.





