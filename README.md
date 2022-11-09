# Aspect

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
Aspect is a fun coding learning application meant for beginner programmers. Learn the basics of languages like python and java and compete with other aspecters(users of the app)!

### App Evaluation
[Evaluation of your app across the following attributes]
**10/10 across all categories**
- **Category:Educational** 
- **Mobile:IOS Application**
- **Story:An application that lets people learn the basics of programming in a fun competetive way!**
- **Market:Anybody intrested in coding**
- **Habit:Leaderboard system and fun game layout will form habits**
- **Scope:Can add levels to questions and have problems for expert programmers as well**

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* As a beginner programmer who uses Aspect, I want to be able to learn the basics of coding, so that I can improve.
* As a gamer who uses Aspect, I want a fun and interactive game that can keep me engaged so that I am not bored. 

**Optional Nice-to-have Stories**

* As a CS teacher who uses Aspect I want a way to track my student's progress, so that I can use the app for class.
* As an experinced programmer who uses Aspect I want a way to have harder questions, so that I can improve my coding. 

### 2. Screen Archetypes

* Launch Screen - Screen will show the name of the app "Aspect" with a fun animation
   * As a recurring user of Aspect, I want to see a fun launch screen
   
 * Signup/Login - Screen will user to sign up or sign in to use aspect
   * As a recurring user of Aspect, I want a means to save my progress so that I feel improvement

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Register Button -> Takes them to Homepage
* Signup Button -> Takes them to Homepage
* Next Button -> Takes them to next question/page

**Flow Navigation** (Screen to Screen)

* Register Screen 
   * Register Button -> Takes them to Homepage
   
* Signup Screen 
   * Signup Button -> Takes them to Homepage

## Wireframes
[Add picture of your hand sketched wireframes in this section]
<img src="https://recordit.co/1obdLmjTMn.gif" width=600>

### [BONUS] Digital Wireframes & Mockups
<img src="https://recordit.co/1obdLmjTMn.gif" width=600>
### [BONUS] Interactive Prototype
<img src="https://recordit.co/sJ6jGvZz5l.gif" width=600>

## Schema 
### Models
[Add table of models]
[This section will be completed in Unit 9]
| Property  | Type | Description |
| :------------ |:---------------:| -----:|
| questionid   | Int or String | unique ID for questions |
| Question    | String       |   question being shown to the user|
| CorrectCount | Number       |    # of questions got right |
| IncorrectCount | Number       |    # of questions got wrong |

### Networking
* Home Feed Screen
* (Read/GET) Query all questions related to the user 
```java
let query = PFQuery(className:"Question")
query.whereKey("questiontype", equalTo: currentUser)
query.order(byDescending: "Diffculty")
query.findObjectsInBackground { (questions: [PFObject]?, error: Error?) in
   if let error = error { 
      print(error.localizedDescription)
   } else if let questions = questions {
      print("Successfully retrieved \(questions.count) questions.")
  // TODO: Do something with questions...
   }
}
```
* Create Post Screen
* (Create/POST) Create a new question
* Profile Screen
* (Read/GET) Query logged in user object
* (Update/PUT) Update questions based on correctness

- [OPTIONAL: List endpoints if using existing API such as Yelp]
* Base URL - https://quizapi.io/
```json
  {
    "id": 1,
    "question": "How to delete a directory in Linux?",
    "description": "delete folder",
    "answers": {
      "answer_a": "ls",
      "answer_b": "delete",
      "answer_c": "remove",
      "answer_d": "rmdir",
      "answer_e": null,
      "answer_f": null
    },
    ```
* - curl https://quizapi.io/api/v1/questions -G \
* -d apiKey=YOUR_API_KEY \
* -d limit=10

