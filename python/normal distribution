# import libraries used in the notebook
%matplotlib inline

import numpy as np
from scipy import stats
from matplotlib import mlab
import matplotlib.pyplot as plt

# Set figure height and width
fig_size = plt.rcParams["figure.figsize"]
fig_size[0] = 8
fig_size[1] = 6
plt.rcParams["figure.figsize"] = fig_size

x = np.linspace(-12, 12, 100)
plt.title('Normal distribution \n mean = 0 \n standard deviation = ' + str(3))
plt.xlabel('value')
plt.ylabel('distribution')
plt.plot(x,mlab.normpdf(x, 0, 3))    



#probability distributions

x = np.linspace(-12, 12, 100)

plt.subplot(221)
plt.plot(x,mlab.normpdf(x, 0, 3)) 
plt.title('Normal Distribution')

plt.subplot(222)
plt.plot(x,stats.uniform.pdf(x,-5,10))
plt.title('Uniform Distribution')

plt.subplot(223)
plt.plot(x[x > -1],stats.chi2.pdf(x[x>-1],3))
plt.title('Chi2 Distribution')

plt.subplot(224)
plt.plot(x[x > -1],stats.lognorm.pdf(x[x > -1],3))
plt.title('Logarithmic Distribution')

plt.subplots_adjust(hspace=.5)



def probabilities(sample_distribution, trials, num_bins):
    
    # array from 1 to sample_distribution
    pers = np.arange(1,sample_distribution + 1,1)
    
    # calculate array of relative probabilities for each sample
    lower = int(.35*len(pers))
    middle = int(.2*len(pers))
    upper = int(.40*len(pers))
    extreme = len(pers) - (lower + middle + upper)
    
    prob = [1.0]*(lower) + [.5]*middle + [2.0]*upper + [.5]*extreme
    
    # normalize probability distribution
    prob /= np.sum(prob)

    # take a random sample for number of times in trials variable
    probability_distribution = np.random.choice(pers, trials, p=prob)

    # visualize distribution
    plt.hist(probability_distribution, bins = num_bins)
    plt.title('Histogram of the Population')
    plt.xlabel('Value from the Population')
    plt.ylabel('Count')
    plt.show()
    
    # return random sample size of trials variable
    return probability_distribution

### create a distribution from the probabilities() function
probability_distribution = probabilities(50,10000,100)

print('population mean', np.mean(probability_distribution))


# take samples from the distribution and calculate the mean of each sample
iterations = 100000
num_samples = 10
distribution = probability_distribution
sample_means = []

# iterate through picking samples and calculating the mean of each sample
for iteration in range(iterations):

    samples = []

    # iterate through for the sample size chosen and randomly pick samples
    for sample in range(num_samples):
        samples.append(distribution[np.random.randint(1,len(distribution))])

    # calculate the mean of the sample
    sample_means.append(np.mean(samples))

# Plot the distribution of the sample means alongside the population histogram
ax1 = plt.subplot(121)
plt.hist(distribution, bins=200)
plt.title('Histogram of the Population')
plt.xlabel('Value')
plt.ylabel('Count')

ax2 = plt.subplot(122, sharex=ax1, sharey=ax1)
plt.hist(sample_means, bins=200)
plt.title('Histogram of the Sample Means')
plt.xlabel('Value')
plt.ylabel('Count')

plt.show()


# normalized histogram of the sample means and an equivalent normal distribution with same mean and standard deviation 
fig = plt.figure(figsize=(8, 3)) 

plt.hist(sample_means, bins=50, normed=True)
plt.title('Normalized Histogram of Sample Means and \n Equivalent Normal Distribution')
plt.xlabel('Value')
plt.ylabel('Count')

x = np.linspace(min(sample_means), max(sample_means), 1000)
plt.plot(x,mlab.normpdf(x, np.mean(sample_means),np.std(sample_means)))    

plt.show()


### Compare population distribution with sample mean distribution

fig = plt.figure(figsize=(8, 3)) 

ax5 = plt.subplot(121)
stats.probplot(probability_distribution, plot=plt)
ax6 = plt.subplot(122)
stats.probplot(sample_means, plot=plt)

ax5.set_title('Probability Plot of the Population')
ax6.set_title('Probability Plot of the Sample Means')








