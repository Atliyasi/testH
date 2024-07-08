class Person {
  // 姓名
  name: string = "";
  // 年龄
  age: number = 0;
  // 构造函数，初始化姓名和年龄
  constructor(name: string, age: number) {
    this.name = name;
    this.age = age;
  }

  // 输出个人信息的方法
  message(): string {
    console.log(`My name is ${this.name}, I'm ${this.age} years old`);
    return `My name is ${this.name}, I'm ${this.age} years old`;
  }

}

// 导出Person类
export { Person }