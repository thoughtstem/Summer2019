#lang scribble/manual

@(require "./common.rkt"
          2htdp/image
          lang/posn)

@(bio "Daniel Ritchie"
      "daniel-ritchie.png"
      "I am 20 years old and from San Diego.
I currently go to the University of California, Davis and I am studying Computer Science with a Minor in Education.
I love to play soccer, play Dungeons and Dragons, and read.")

@blog{
      
@blog-post["Personal Philosophy"]{
Try hard and go far.}

@blog-post["Day 26"]{
Today I had some troubles finding the room inside the library, but I still managed to make it on time. I'm really excited for the
week, and to learn as much as I can. I already know a fair amount of the Git workflow, but it's nice to practice and use my
skills. Michael and I managed to complete two katas, although both dealt with README files so they weren't very programming intenstive. I was able to
use my Git guide that I wrote for a previous personal project.
}

@blog-post["Day 27"]{
Today Michael and I added Snowman Katas to the My-Fundamentals page. We spent a lot of time simply figuring out how things should be formatted. However, in doing so we found a way to reorganize the katas on the manual page, and how to put them in a non-alphabetical order. Once we figured this out, all we had to do was push, but throughout the course of the day there were several commits that we needed to pull. In order to do this, we had to stash the changes. I nearly lost our work (because I had to stash twice and the stuff we wanted was in the bottom stash file), but we managed to rescue it, much to the class's amusement. Overall, emerging triumphant over the tribulations of a fickle technology felt great.
}

@blog-post["Day 28"]{
Today we got to experience an all too real aspect of software development. First, some teams self-assigned certain aspects of the project. We took the web katas. However, Steven found that the overall project wasn't able to build, due to several issues. So, like a real software team, we had to handle the issues as top priorities, as if the client suddenly was not able to use the product. We fixed the first web kata issue fairly quickly, but the next issue was much more complicated, as each solution revealed or caused a new problem. We did not manage to finish it today, but we made decent progress, and we will pick it back up tomorrow.
}

@blog-post["Day 29"]{
We fixed the issue! Turns out, using every available resource includes asking a mentor for help in solving a seemingly insurmountable issue. A.K.A. we asked Steven for help and he provided an insight that helped us fix the error. It wasn't an ideal fix, there are still problems, but the whole thing builds, which is the primary goal. We need to alter the rest of the katas because of the way in which we fixed the error, and we may be making them more complicated.
}

@blog-post["Day 30"]{
Today I worked alone, and I modified the existing web katas to fit the new language. However, it was a more seamless transition than I initially worried that it would be. I needed some help from Kristyna to find the right docs, but once I did it was easy. I also wrote a kata to include an image on a webpage. I encountered some difficulty with this, as the server that Racket creates has a different working directory than the file that you write the code in. So, I had to add a path to the assets folder, which allows the server to serve those files statically.
}

@blog-post["Day 36"]{
This week, I am partnering with Cristyna and Jack (Jake?). We started the day with Steven giving us a question from a coding interview prep book, and it was great! I had to go up and present my solution, which worked, although it wasnt the best possible solution (it was Big-O of n^2). It was pretty popular among the other interns, so I think we are going to continue to do them. After that, I mostly worked on merging the GIF katas with the meme katas, because they have similar content and we couldn't think of ways to continue adding GIF katas.
}

@blog-post["Day 37"]{
Today, we began with a new coding interview question. This one also dealt with a singly linked list, and it's actually a question that I encountered in a job fair before. The first time I encountered it, I had not taken a data structures or algorithms class, and so I was completely unprepared and messed the question up. But, it inspired me to go and teach myself about the question, so when it came up today I already knew the solution. Then I fixed some build errors with the memes katas and organized the web katas into what I hope are sensible sections. Steven has put up the question for tomorrow, and I spent the last little bit of the day coming up with a couple of solutions.
}
}
