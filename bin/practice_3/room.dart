// 1.	Создайте класс “Room”, который будет содержать “height”, “length” и “width"
// комнаты в трех полях. Этот класс также имеет метод “volume()” для вычисления объема этой комнаты.
// ignore_for_file: prefer_initializing_formals

class Room {
  int height = 0;
  int length = 0;
  int width = 0;

  Room(int height, int length, int width) {
    this.height = height;
    this.length = length;
    this.width = width;
  }

  void setHeight(int height) {
    this.height = height;
  }

  int getHeight() {
    return height;
  }

  void setLength(int length) {
    this.length = length;
  }

  int getLength() {
    return length;
  }

  void setWidth(int width) {
    this.width = width;
  }

  int getWidth() {
    return width;
  }

  int volume() {
    return height * length * width;
  }
}

void main(List<String> args) {
  Room room = Room(12, 3, 4);
  print(room.volume());
}
