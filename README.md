# FeedView
A simple feed based view in Swift with customizable and delightful animations. Think UICollectionView with the animations you always wanted. Work in progress.

![alt tag](https://raw.github.com/daltoniam/FeedView/images/demo.gif)

### Example

```swift
let feedView = FeedView(frame: CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height))
feedView.topSpacing = 4
feedView.leftSpacing = 4
let size = feedView.recommendedSize(3,adjustSpacing: true)

self.view.addSubview(feedView)
let view = UIView(frame: CGRectMake(0, 600, size, size))
view.backgroundColor = UIColor.redColor()

let view2 = UIView(frame: CGRectMake(0, 600, size, size))
view2.backgroundColor = UIColor.greenColor()

let view3 = UIView(frame: CGRectMake(0, 600, size, size))
view3.backgroundColor = UIColor.blueColor()

let view4 = UIView(frame: CGRectMake(0, 600, size, size))
view4.backgroundColor = UIColor.purpleColor()

let view5 = UIView(frame: CGRectMake(0, 600, size, size))
view5.backgroundColor = UIColor.yellowColor()

let view6 = UIView(frame: CGRectMake(0, 600, size, size))
view6.backgroundColor = UIColor.orangeColor()

let view7 = UIView(frame: CGRectMake(0, 600, size, size))
view7.backgroundColor = UIColor.cyanColor()

let view8 = UIView(frame: CGRectMake(0, 600, size, size))
view8.backgroundColor = UIColor.blackColor()

feedView.addViews([view,view2,view3,view4,view5,view6,view7,view8], animated: true)
```

### Usage

Still very much a work in progress. My goal is to have a simple way to pick the animation, size for each item.

### TODOs

The view is not complete, so many of these TODOs are notes on things that need to be complete before ever considering the view in anyway complete.

- [ ] delegate/closures for custom animations, didSelect, etc..
- [ ] Some nice prebuilt animations
- [ ] Size/layout system to make pretty layouts easy
- [ ] Recycling items in scrollView
- [ ] Support dragging, a.k.a. "realtime" animations
- [ ] Complete Docs
- [ ] Add Unit Tests
- [ ] Add Example Project


## License ##

FeedView is license under the Apache License.

## Contact ##

### Dalton Cherry ###
* https://github.com/daltoniam
* http://twitter.com/daltoniam