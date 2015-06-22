Animated Backgrounds
==========

An aesthetically pleasing moving background

![](https://i.imgur.com/3mIW8dg.jpg)

###Basic Instructions
Place in your widgets folder and unzip


![](https://i.imgur.com/ZBWSSXy.jpg)

###For Extra Widgets
The widget comes with several popular widgets reskinned in a consistent style, and layered to look nice with the background. To install them, unzip the 'extra-widgets' folder in the background widget.

![](https://i.imgur.com/Fh5UDJm.jpg)

###To Customize the Background widget
If you wish to hide your regular background, open `index.coffee` in the background widget folder. Set `showBackgroundColor` to true, and set `backgroundColor` to the desired color. This will replace your background with the color.

###To Create your own Backgrounds
To create your own background, you'll need five transparent pictures, that can be layered for the illusion of depth. This is easiest if created via a 3D rendering and animation program, like blender. The blender file used to create the included images is located in `background.widget/desert-islands/Desert_Islands_Source`.

When you have the images, create a new folder in background.widget, then place the images into the folder, with the naming scheme of `1.png` through `5.png`. Then, in index.coffee, change `imageSet` to the name of your folder.

Feel free to contribute a pull request with your images to the widget.

###To layer and animate your widgets
Layering and animating other widgets is quite simple. First, to layer the widget, add a `z-index` to the base html class. With the background widget, the backmost picture has a z-index of 10 and the frontmost has a z-index of 50. When two elements or widgets overlap, the one with the lowest z-index will be occluded.

For animations, at the top of your render html, include this:
```
<style>
    @-webkit-keyframes [animationName]{
       from{top: [initialHeight]px}
       to{top: [finalHeight]px}
    }
</style>
```
Where [animationName] is the name of the animation you will apply, [initialHeight] is the starting height, an [finalHeight] is the ending height. Usually you'll want one of these to be 0, for clarity's sake. As a comparison, most of the included extra widgets move 10 pixels.

Next, if you don't already have one, create an element which encompasses all of your html code. Give the element the following properties in your style document:
```
position: relative
animation-iteration-count: infinite
animation-timing-function: ease
animation-direction: alternate
animation-name: [animationName]
animation-duration: [time]s
```

Where [animationName] is the name you used earlier, and [time] is the time in seconds it takes to execute half of the animation (in other words, moving from the topmost position to the bottommost one).

You widget should now be animated, and should be incorporated into the layering of the background.

Feel free to create a pull request with your layering and animation of the widget if it matches the style of the other extra widgets, or, better, make a pull request for the original widget with the layering.
