# Introduction to Coding @ SFPC

#### [Follow along with in-class exercises](https://github.com/SFPC/workshops/tree/master/Introduction%20to%20Coding/exercises/day1)

## Class 1: Introduction to HTML and CSS

the programming we will do with HTML is in the styling. Metaphors for HTML should be a Word Document (text with style), or assembling punches in an old printing press.

### Printing Press Metaphor

Picture hundreds of years ago running a printing press, your job is to set the punches while your friend dictates letters to you: 

 - "capital a"
 - "b"
 - "comma"
 - "space"

![image](https://raw.githubusercontent.com/SFPC/workshops/master/Introduction%20to%20Coding/images/punches.jpg)

These are phrases that relate to one punch, you add them as you hear them. But sometimes your friend says "switch to italics", and you don't put down a punch but instead change your own behavior about selecting punches.

##### Back to present day

If we are feeding letters to a computer to display on a webpage, we need a __symbol__ that says "now we are giving you a command instead of a letter".

HTML wraps a command beginning with `<` and ending with `>`.

### Write an example 5-10 word phrase on the board

Propose styling (color, font size) only a few words inside of the sentence

Let the students uncover the concept of start and stop tags, tell them about void elements like carriage return (void elements are like `<br>` and don't require a `</br>`).

Focus on the way that students speak for a computer: "computers counting characters", "searching for word strings". Establish that students are coming to class with a posteriori knowledge about how they believe computers think.

> By programming a computer, we are meeting a computer halfway, we won't speak binary, computers won't speak a human language. Computers have a way of navigating the world, just as humans do - our goal as coders is to learn to see how computers see so that when we express ourselves through code we shape the unformed parts of our ideas to be most easily interpreted by a computer.

# In-class Coding

Code a series of HTML documents with the students:

1. a document with `<h1>`, `<h2>`, and `<p>`
2. wrap `<em>` around a word inside of a paragraph. wrap an `<h1>` around a word and notice that it is no longer in-line. Talk about block and inline concepts.
3. side by side: do an inline `style=""` for a `<h1>` (wrong way of styling) and in another document style the `<h1>` in the header `<style></style>` section.
4. talk about "CSS selectors" in the printing press metaphors from earlier.
5. introduce "class" as a way of selecting only certain kinds of `<h1>` or `<p>`

### [Exercise 7: split screen DIV](https://rawgit.com/SFPC/workshops/master/Introduction%20to%20Coding/exercises/day1/7-divs-split-vert.html)

In a gradual shift, move away from text and into colors divs with `background-color`

1. Revisit inline and block by introducing `<span>` and `<div>`

Exercise in full-screen painting with div

1. divs will shrink to 0 without `width` and `height`, things only take up as much space as they need

2. Capture the full screen by adding this CSS. and talk about browser default styling `html, body, div{ margin:0; width:100%; height:100%; }`

3. full-page painting with DIV. split the screen into 2 colors: 
 - 2 divs horizontally (on top) divs are already block elements
 - 2 divs vertically as columns, use `float:left`

### [Exercise 7: split screen DIV](https://rawgit.com/SFPC/workshops/master/Introduction%20to%20Coding/exercises/day1/7-divs-split-vert.html)

### Homework Idea: Flag

1. 3 panel vertical column divs can be made into country flags
2. Absolute centering image can make flags with emblems

### Homework Idea: Re-code Piet Mondrian

![image](https://raw.githubusercontent.com/SFPC/workshops/master/Introduction%20to%20Coding/images/mondrian.jpg)

1. introduce container divs
 - the full screen contains at first 2 container divs
 - each container recursively splits into 2 container divs, vertically or horizontally, by percentages.

![image](https://raw.githubusercontent.com/SFPC/workshops/master/Introduction%20to%20Coding/images/containers.jpg)

2. introduce borders, and to keep borders inside of divs add the CSS: `* { box-sizing: border-box; }`

3. okay if you want to introduce border-left, border-top, etc. or make it easier and don't require borders to precisely reflect the painting.

Important point for students to get is that you can read the code top-down, but a better way might be to read it in nested-order, reading tab space left to right, or depth-first.

```html
<div>
  <div>
    <div class="color-1"></div>
    <div>
      <div class="color-2"></div>
      <div class="color-3"></div>
    </div>
  </div>
  <div>
    <div class="color-4"></div>
  </div>
</div>
```

color-1 and color-4 are the same *tab space* in from the left

![image](https://raw.githubusercontent.com/SFPC/workshops/master/Introduction%20to%20Coding/images/mondrian.gif)