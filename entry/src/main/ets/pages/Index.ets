class Person {
  // 姓名
  name: string = "";
  // 年龄
  age: number = 0;

  /**
   * 构造函数，用于创建Person对象
   *
   * @param name 名字，类型为字符串
   * @param age 年龄，类型为数字
   */
  constructor(name: string, age: number) {
    this.name = name;
    this.age = age;
  }

  message(): string {
    // 打印name和age的值
    console.log(`My name is ${this.name}, I'm ${this.age} years old`);
    return `My name is ${this.name}, I'm ${this.age} years old`;
  }
}

/**
 * 创建一个名为'Tom'且年龄为18的Person对象并返回
 *
 * @returns 返回一个Person对象，其名字为'Tom'，年龄为18
 */
function createPersonWithNameAndAge(name: string, age: number): Person {
  // 创建一个新的Person对象并返回
  return new Person(name, age);
}

// 使用时
const tom = createPersonWithNameAndAge('Tom', 18);




@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  // 实例化一个 Person 对象
  @State person: Person = new Person('Tom', 18);
  onInit() {
    // 调用 Person 对象的 message 方法
    this.person.message();
  }
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