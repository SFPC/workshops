# Introduction to Coding @ SFPC

### [► Next: Class 2](https://github.com/SFPC/workshops/blob/master/Introduction%20to%20Coding/class2.md)

## Class 1: Introduction to HTML and CSS

[Follow along with in-class exercises](https://github.com/SFPC/workshops/tree/master/Introduction%20to%20Coding/exercises/day1)

### Goal

* Introduce HTML and CSS, the visual metaphor will be a printing press or word-processing document
* CSS, not just for styling, talk about how it is for *targeting* things on a page
* HTML is top-down, left-right, how to move beyond and use the full-screen

# Lecture

### HTML

You are operating a printing press, your job is to set the punches while your friend dictates letters to you: 

* "capital a"
* "b"
* "comma"
* "space"

But occasionally your friend says "switch to italics", and you don't put down a punch but instead change your behavior about future punches.

>If we are feeding letters to a computer to display on a webpage, we need a *symbol* that says "now we are giving you a command instead of a letter"

HTML command are in `<` `>`. It won't display the inside, but rather *interpret* it.

![image](https://raw.githubusercontent.com/SFPC/workshops/master/Introduction%20to%20Coding/images/punches.jpg)

### CSS

**Write an example 5-10 word phrase on the board**

Propose styling (color, font size) only a few words inside of the sentence. How do you target a word ("characters 12-17"), 

Focus on the way that students speak for a computer: "computers counting characters", "searching for word strings". Establish that students are coming to class with a posteriori knowledge about how they believe computers think.

> By programming a computer, we are meeting a computer halfway. Computers have a way of navigating the world, just as humans do - our goal as coders is to learn how computers see so that when we express ourselves through code we shape the unformed parts of our ideas to be most easily interpreted by a computer.

Learn CSS's system of targeting elements (`h1`, `p`), and classes (`.class1`), perhaps include ids as well (`#id1`)

# Exercises

Code a series of HTML documents with the students:

1. a document with `<h1>`, `<h2>`, and `<p>`
2. wrap `<em>` around a word inside of a paragraph. wrap an `<h1>` around a word and notice that it is no longer in-line. Talk about *block* and *inline*.
3. side by side: do an inline `style=""` for a `<h1>` (wrong way of styling) and in another document style the `<h1>` in the header `<style></style>` section.
4. talk about "CSS selectors" in the printing press metaphors from earlier.
5. introduce "class" as a way of selecting only certain kinds of `<h1>` or `<p>`

In a gradual shift, move away from text and into colors divs with `background-color`

1. Revisit *inline* and *block* definitions and introduce `<span>` and `<div>`

Exercise in full-screen painting with div

1. Capture the full screen by adding this CSS. and talk about browser default styling `html, body, div{ margin:0; width:100%; height:100%; }`
    - Explain: divs will shrink to 0 without `width` and `height`, things only take up as much space as they need

2. full-page painting with DIV. split the screen into 2 colors: 
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

### [Exercise 8: nesting DIV](https://rawgit.com/SFPC/workshops/master/Introduction%20to%20Coding/exercises/day1/8-divs-nesting.html)

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