
# Q4:

simulateWF <- function(twoN, f, G){
  p <- numeric(G + 1)
  p[1] <- f
  for(i in 1:G){
    p[i+1] <- rbinom(1, size = twoN, prob = p[i]) / twoN
  }
  return(p)
}

# Q5

# Q5) Use your function simulateWF() to simulate 1000 trajectories with 2N = 100 and f = 0.1 for G = 1000 and plot them in one plot. In how many cases was the allele lost? Does this match the expectation? Repeat for different population sizes and initial allele frequencies. What is the effect of the population size?

# create  list to store results for just the last generation
final_freqs <- numeric(1000)

# loop to simulate 1000 trajectories
for(i in 1:1000){
  final_freqs[i] <- simulateWF(twoN = 1000, f = 0.1, G = 1000)[1001]
}

# plot all in one plot


# Q6) Use your function simulateWF() to study fixation probability of a new mutation under different population sizes (ensure G is large enough). Does the fixation probability depend on the population size? How does this affect the substitution rate?




# Q7) Write a function simulateWFWithSelection() that simulates allele trajectories under both genetic drift and viability selection. Similar to your function simulateWF() you wrote above, it should take as input i) the population size 2N, ii) the initial allele frequency f, iii) the number G of generations to simulate and iv) also a vector v of viabilities for the genotypes AA, Aa and aa. It should then return the allele frequency (between 0 and 1) for each generation as a vector. In each generation, your function should apply selection to alter the allele frequency, and then use binomial sampling to simulate genetic drift in that modified allele frequency.

















