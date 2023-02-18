# Beta Distribution

The Beta distribution is a continuous distribution that is often dubbed as the probability distribution of probabilities. This is because it can only take on value between $0$ and $1$.

It is used to infer the probability of an event when we have some information about the volumes of successes and failure. 



### Probability Density Function

The probability density function of the Beta distribution is
$$
f(x)= \frac{x^{\alpha - 1}(1-x)^{\beta - 1}}{B(\alpha, \beta)}
$$


where $$0\le x \le 1$$, therefore it can be interpreted as a **probability** as we mentioned above.

It is parametrised by two variables $\alpha$ and $\beta$ and $$B(\alpha, \beta)$$ is the **beta function** which is the normalising constant:
$$
B(\alpha, \beta)= \frac{\Gamma(\alpha)\Gamma(\beta)}{\Gamma(\alpha + \beta)}
$$
where $$\Gamma(\alpha)$$ is the **Gamma function**
$$
\Gamma(\alpha) = (\alpha - 1)!
$$


Putting it all together:
$$
f(x) = \frac{x^{\alpha - 1}(1-x)^{\beta - 1}}{\frac{(\alpha-1)!(\beta-1)!}{(\alpha+\beta-1)!}}
$$


Let's now focus only on the numerator though, because the denominator is just a normalizing factor that is needed to bound the result in the interval $$[0, 1]$$.
$$
x^{\alpha - 1}(1-x)^{\beta - 1}
$$
You can thon of $$\alpha - 1$$ as the number of successes and $$\beta - 1$$ as the number of failures.

You can choose the $$\alpha$$ and $$\beta$$ parameters however you think they are supposed to be. If you think the probability of success is very high, let's say $$90\%$$, set $$90$$ for $$\alpha$$ and $$10$$ for $$\beta$$.   

### Example

Let's say how likely someone would agree to go on a date with you follows a Beta distribution with $$\alpha=2$$ and $$\beta=8$$.    
What is the probability that your success rate will be greater than $$50\%$$?
$$
P(X>0.5)=1-CDF(0.5)=0.01953
$$


![](imgs_beta/betaplot.png)



Link to full article:



https://towardsdatascience.com/beta-distribution-intuition-examples-and-derivation-cf00f4db57af





* sarebbe carino se ci fosse una gif all'inizio
* spiegare che cavolo è una conjugate prior.







