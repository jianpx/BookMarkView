# BookMarkView

 一个长得像书签一样的view，可以设置书签的颜色，文本（文本如果是中文是会竖着排版的）

# Usage
代码初始化

```objc
BookMarkView *bookmarkViewRight = [[BookMarkView alloc] initWithFrame:CGRectMake(200, 100, 100, 300)];
bookmarkViewRight.bgColor = [UIColor redColor];
bookmarkViewRight.markLabel.text = @"已经看完第一章节";
```

xib或者StoryBoard里面也是可以直接指定你的view的class是BookMarkView，具体看Demo里面的做法

# Installion
Advise to use CocoaPods to install BookMarkView, add following line into your `Podfile` (TODO)

`pod 'BookMarkView'`

# ScreenShot
![screenshot](https://raw.githubusercontent.com/jianpx/BookMarkView/master/screenshot/bookmark.png)
