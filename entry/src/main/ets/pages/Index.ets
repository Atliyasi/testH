@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  // 实例化一个 Person 对象
  build() {
    RelativeContainer() {
      // 创建一个文本元素，内容为 this.message
      Text(this.message)
        // 设置文本元素的 ID 为 'HelloWorld'
        .id('HelloWorld')
        // 设置文本元素的字体大小为 50
        .fontSize(50)
        // 设置文本元素的字体加粗
        .fontWeight(FontWeight.Bold)
        // 设置文本元素的对齐规则
        .alignRules({
          // 垂直居中对齐，以 '__container__' 为锚点
          center: { anchor: '__container__', align: VerticalAlign.Center },
          // 水平居中对齐，以 '__container__' 为锚点
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
    }
    .height('100%')
    .width('100%')
  }
}