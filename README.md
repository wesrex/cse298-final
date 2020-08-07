# CSE 298 - Final Exam

Due by: 8/10 by end of day

## Ethics Contract

**FIRST**: Please read the following carefully:

-	I have not received, I have not given, nor will I give or receive, any assistance to another student taking this exam, including discussing the exam with students in another section of the course. Do not discuss the exam after you are finished until final grades are submitted.
- If I use any resource (including text books and online references and websites), I will cite them in my assignment.
- I will not ask question about how to debug my exam code on Piazza or any other platform.
-	I will not plagiarize someone else's work and turn it in as my own. If I use someone else's work in this exam, I will cite that work. Failure to cite work I used is plagiarism.
-	I understand that acts of academic dishonesty may be penalized to the full extent allowed by the Lehigh University Code of Conduct, including receiving a failing grade for the course. I recognize that I am responsible for understanding the provisions of the Lehigh University Code of Conduct as they relate to this academic exercise.

If you agree with the above, type your full name in the following space along with the date. Your exam **will not be graded** without this assent. When you are done, make your first commit with the commit message: "I, <your name>, agree to the ethics contract".

*** Write name and date below ***



*** Write name and date above ***

-----------------------------------------------------------------------------------------------------

## Option 1: Implement FastSLAM

This option is an automatic A. All you have to do is implement the FastSLAM algorithm, a good summary of which is in the Probabilistic Robotics book on page 450. Homework 4 would be a good starting place for this. You can use the same bearing only cameras, or you can add the range in there if you want. It should work either way. You can also use the same robot model and the same noise model. Or you can just add Gaussian noise to everything. Either way, if you can get this algorithm working well, that's an A for you. Just submit the algorithm and a video or series of pictures showing it working. If you provide a series of still images, annotate them to show me what's going on in each one. If you provide a video, host it on youtube and give me a link. It's easy to [record your screen using zoom](https://support.zoom.us/hc/en-us/articles/201362473-Local-Recording). Either give me a voice annotation of what's going on, or write it out in this README with timestamps indicating what is happening.

## Option 2 (2 parts, equal weight)

For this option you'll have to do two problems.

### Part 1

First, Implement one of the following algorithms: 

- A* - Implement the A* algorithm in Matlab. The input to the algorithm can be an adjacency matrix, which is easy to implement in Matlab. The graph will represent a grid world, where each cell connects to its 8 neighbors, with `1` dist to the adjacent ones and `2^.5` distance to the diagonal ones. Represent obstacles by removing edges to neighboring cells. The input to the algorithm should be the start and goal cells. Make a figure that shows the start, goal, any obstacles, and the path found by the algorithm.

- Particle Filter - Implement a particle filter algorithm in Matlab. Homework 4 might be a good place to start with this one. You can keep the same cameras and the same bearing measurements, or you can also add in range. The robot model can be the same too. But instead of tracking a mean and covariance, you'll track a number of hypothetical robot particles. The spread of those robots will represent uncertainty, and you can take the mean of their positions as a guess for where they are. You can find a good particle filter algorithm on page 96 of the Probabilistic Robotics book. 

- Enhanced PID Wall Follower - Change the wall follower in Homework 3 as follows: 1) Handle a walls that are angled. 2) Make this a PID controller instead of just a PD controller. Demonstrate it working by having the robot follow a wall that changes direction. For example, the wall starts out horizontal, but then starts to become angled downward like this (X marks the robot, it wants to go to the right):

```
------------------\
                   \
    X->             \
                     \
                      \
```

- Trajectory Rollout - Implement the Trajectory Rollout algorithm described by [Gerkey and Konolige](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.330.2120&rep=rep1&type=pdf). Also described in [Lecture 8](https://www.youtube.com/watch?v=buEfiJftc0E&list=PL4A2v89SXU3SUUNrwKcE-yy2SX6YQOg_p&index=9&t=0s). Demonstrate this controller working in with the wall follower robot in Homework 3. You'll replace the PD controller with the Trajectory Rollout controller, and you can leave everything else the same.

**Once you are done implementing:**

Demonstrate the algorithm working with a video or a series of stills. If you provide a series of still images, annotate them to show me what's going on in each one. If you provide a video, host it on youtube and give me a link. It's easy to [record your screen using zoom](https://support.zoom.us/hc/en-us/articles/201362473-Local-Recording). Either give me a voice annotation of what's going on, or write it out in this README with timestamps indicating what is happening.

### Part 2

Choose one of the show-and-tell videos posted in our Slack channel. **You cannot choose the one you shared**. Based on what we learned in this course, form a hypothesis for how it works. Can you discern any sensors that are on the robot? What are they detecting? What sensors would this robot need theoretically to work? How does the robot use the info it collects from its sensors? How is the robot going from point A to point B? How does the robot know where it is? How is the robot avoiding obstacles? What do you observe about the robot's behavior leads you to your conclusions? What failure modes will the robot encounter (where won't the robot work?)

There are really no wrong or right answers here. I just want you to show me that you understand the architecture of robots we talked about in this class, and to see if you can apply that knowledge to a real-world example. You may be completely wrong, but that's not the point of this question.

Minimum: 200 words
