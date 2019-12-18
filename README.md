# flutter_item_widget

a common left right item widget container. support All platform.

## Usage

to use this plugin, add flutter_item_widget as a dependency in pubspec.yaml file

```
dependencies:
        flutter_item_widget: ^0.0.1
```

### Example
```
import 'package:flutter_item_widget/flutter_item_widget.dart';


...
ItemWidget(
              bgColor: Colors.amber,
              widgetLeft: Text(
                "负责人",
                style: TextStyle(
                    color: Color.fromRGBO(156, 167, 198, 1), fontSize: 13),
              ),
              widgetRight: Text(
                "张三",
                style: TextStyle(
                    color: Color.fromRGBO(156, 167, 198, 1), fontSize: 13),
              ),
            ),
            ItemWidget(
              width: 200,
              bgColor: Colors.blue,
              widgetLeft: Text(
                "我的",
                style: TextStyle(color: Colors.white, fontSize: 13),
              ),
              widgetRight: Image.asset(
                "res/img/arrow_right.png",
                width: 10,
                fit: BoxFit.contain,
                height: 10,
              )
...
```
![效果图](https://github.com/lisong15/flutter_item_widget/raw/master/imgs/sample_pre.png)
### Available Properties
* **width:num**|宽度，默认屏幕宽度
* **weightLeft:int**|左边占的比例，默认1
* **weightRight:int**|右边占的比例，默认1
* **alignmentLeft:Alignment**|左边的对其方式，默认[Alignment.centerLeft](https://api.flutter.dev/flutter/painting/Alignment-class.html)
* **alignmentRight:Alignment**|右边的对其方式，默认[Alignment.centerRight](https://api.flutter.dev/flutter/painting/Alignment-class.html)
* **bgColor:Color**|背景颜色，默认Scaffold的背景色
* **widgetLeft:Widget**|左边的widget，必须
* **widgetRight:Widget**|右边的widget，必须


For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
