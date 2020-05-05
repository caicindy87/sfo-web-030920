class Rectangle {
  constructor(height, width) {
    this.height = height;
    this.width = width;
    // this.myFunction = this.myFunction.bind(this);
  }

  myFunction() {
    console.log('main function body', this);
    setTimeout(() => {
      console.log('callback', this);
    }, 2000);
  }

  area() {
    setTimeout(this.myFunction, 100);
  }
}

const rectangle1 = new Rectangle(4, 5);
const rectangle2 = new Rectangle(2, 4);
const rectangle3 = new Rectangle(6, 2);

console.log(rectangle1.myFunction());
