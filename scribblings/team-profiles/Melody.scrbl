#lang scribble/manual

@(require "./common.rkt"
          ts-tactics
          ts-tactics/tactics/tactic-library/disintegrating-code
          "./disintegrating-code-no-peeking.rkt"
          "./no-peeking.scrbl")


@require[@for-label[Summer2019
                    racket/base]]

@(require "./common.rkt")
@(bio "Melody Ruth" "melody-ruth.png" "Going into 12th grade.")

@blog{
  @blog-post["Personal Philosophy"]{
     Using programming, we can potentially create an AI which will be able to solve problems we can't solve directly, signifigantly
     extending our abilities. This certainly wouldn't replace human problem solving, in fact, it would require new types of thinking and problem solving.
  }
  @blog-post["Day 1"]{
     We learned about distributed cognition. Distributed cognition is a theory that the mind or cognitive load of an
intellectual can be distributed among other inviduals or the environment.
This means that someone can increase their abilities by relying on others
or on their environment (pencil and paper, calculator, friends, etc).

This can also be called "extended mind."

Examples of this include when groups of people or animals come together
to accomplish tasks that would be much more difficult to solve alone.

One example is when a large crowd of people played a chess match against one of the greatest chess players at the time.

Another example is when animals exhibit novel behaviors specific to their location. In the Sierra Nevadas, bears
on one side of the mountain would approach campers and charge at them to drop their food. Bears on the other side of
the mountain would not do this because their commmunication doesn't reach that far.

Distributed cognition brings up questions about what it really means to "know" something. In a hypothetical scenerio,
two people visit a museum. Inga retrieves the directions from her long term memory, while Otto has alzheimers and has to
reference a notebook. They can both navigate to the museum, so does the Otto + notebook system have the same cognitive abilities
as Inga?

Another example wherre the definition of knowledge comes into play is in the "Chinese Room" Experiment. This was conducted by
John Steargle in response to Alan Turing. The conclusion is that a computer with high-level AI would still not understand its tasks
the way a human would, even though it can still complete the task.
In another version of the "Chinese Room" idea, a person who doesn't know Chinese uses books and other resources to converse in writing with someone outside of the
room who does speak Chinese. The person in the room doesn't know Chinese, but the person+room system does seem to "know" Chinese in some sense.

@url["https://en.wikipedia.org/wiki/Distributed_cognition"]
  }
  @blog-post["Day 2"]{
      On day 2 we talked about recall vs recognition vs fluency. When you're learning a language you start with recall and then build up levels
      of recognition towards fluency.
  }
  @blog-post["Day 3"]{
      On day 3 we learned about Broca's region. It is associated with language, but it extends to things we might not usually consider language like shadow puppets
      or programming. This informs decisions about how to teach programming (perhaps more like we teach foreign language), but it is tough to even say what is
      the language part of the brain as opposed to the math part of the brain, for instance, since even math involves interpreting notation, taking input and
      producing output, and communicating ideas.
  }
  @blog-post["Day 4"]{
We made a variant of disintegrating code designed to add an extra level of difficulty, keep students engaged, and build typing skills. The idea is that since students
have to work on both typing without looking and remembering the code it will push them to a new level in both skills.
We refactored our tactic code to have the information in a separate file, no-peeking.scrbl, with a function, no-peeking which will display the information as long
as no-peeking.scrbl is required.

DISINTEGRATING CODE (NO PEEKING VERSION)

@(no-peeking)
@;no-peeking is a function in no-peeking.scrbl that displays information on our tactic (disintegerating code no peeking version)
}

}