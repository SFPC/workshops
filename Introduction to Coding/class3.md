# Introduction to Coding @ SFPC

### [◄ Back: Class 2](https://github.com/SFPC/workshops/blob/master/Introduction%20to%20Coding/class2.md)

### [► Next: Class 4](https://github.com/SFPC/workshops/blob/master/Introduction%20to%20Coding/class4.md)

## Class 3: Dynamically-Generated Content, Javascript Interactivity

[Follow along with in-class exercises](https://github.com/SFPC/workshops/tree/master/Introduction%20to%20Coding/exercises/day3)

### Goal

* dynamically generate HTML content:
    * DIVS which fill the screen and have random colors
* new javascript:
    * arrays
    * functions
* javascript to change properties of elements

With Javascript we can print into the html page using
`document.body.innerHTML = ...`. We are beginning to establish different variable types. The variable type that is expected here is a string. 

# Exercises

## Generative Color Palette

full-screen color bars randomly generated each refresh. random total number of bars, random colors.

1. inside a while loop, add a lot of full-width row divs to the screen
2. give them all an inline styled background-color. eventually:
    * `"background-color:blue"`
    * `"background-color:" + colorString`
3. use `rgb()` and build a color string using `Math.random`
    * 	`colorString = "rgb(90, " + green + ", 200)"`
    *  if 2 of the colors are fixed, you get a nice set of results
4. generate a INTEGER between 0 and 255
    * `Math.random() * 256`
    * FLOAT into INT using `Math.floor`
5. wrap everything you did in a function that fills the DOM
    * use flexbox rows
6. MOUSE LISTENER: add an event listener for "click", call the function that clears and fills the DOM.

### result: [6-color-bars.html](https://rawgit.com/SFPC/workshops/master/Introduction%20to%20Coding/exercises/day3/6-color-bars.html)

# Lecture

### New Javascript Concepts

* arrays can hold any type in them
    * `array[2.5]` does not work
* functions are like blocks of code that you portion off for calling later, or calling a repeated number of times 
    * keep it simple don't introduce function arguments yet

## Math.random()

Spend time with Math.random. Make sure students know how to turn it into Integers.

* generate integers between 0 and 255
* arrays need ints
* `while(count < randomNum)` randomNum can be float it's okay

## Functions

* take a bit of code and put `{` `}` around it

```javascript
{
count = count + 1;
document.body.innerHTML = count;
}
```

This is how you section off a bit of code. Now you can give a name to everything that is inbetween the `{` `}`

```javascript
function myFunction(){
count = count + 1;
document.body.innerHTML = count;
}
```

This does 2 things

* now you can run this code later, multiple times, as many times as you want
* now this code won't run on the start. you have to make it run once.

```javascript
function myFunction(){
count = count + 1;
document.body.innerHTML = count;
}
myFunction();
```

now this is equivalent to the original block of just the 2 lines. except with the extra bonus of being able to run these 2 lines again as many times as you want.

## TV

make a full-screen TV (of animated gifs), with 3 channels, up and down arrow keys change the channel

1. From [GIPHY](http://giphy.com), grab 3 animated GIF files
2. Fill an Array with the filenames
    * `var array = ["file1.gif", "file2.gif", "file3.gif"]`
3. select first image from the array, set it to body's background image
    * Math.random into integers 0, 1, 2
    * `document.body.style.backgroundImage` property
    * `"url('" + array[channel] + "')"`
4. global variable: `channel` (0, 1, or 2). 
5. KEYBOARD LISTENER: 
    * up arrow increments `channel`
    * down arrow decrements `channel`
6. loop channel so that if dips below 0, set it to max. same for going too high.

### result: [7-tv.html](https://rawgit.com/SFPC/workshops/master/Introduction%20to%20Coding/exercises/day3/7-tv.html)

# Homework Idea: Mad Lib

Using [Darius Kazemi's Corpora](https://github.com/dariusk/corpora/tree/master/data) grab 2 things

* a phrase (you will remove 1 word from this)
* an array of words (to replace the 1 word from above)

Decide for one word from your phrase to be the mad-lib word. Make 1 HTML document that prints your phrase large on screen, randomly selecting a different word each time to render inside of your phrase.