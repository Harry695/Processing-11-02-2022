//10/02/22 finished


//setup
void setup() {
  size(900, 900);
  background(100);
  strokeWeight(20);
  noFill();
  for (int v = 200; v > 100; v = v - 5) {
    stroke(300 - v);
    ellipse(450, 450, 750 - 8*v, 750 - 8*v);
  } 
  strokeWeight(20);
  stroke(#53EAE9);
  rect(10, 10, 880, 880);
  //main loop
  for (int d = 0; d < allColours.length; d++) {
    color c = allColours[d];
    println("using colour:", c);
    println("colour index:", d);
    for (int o = 0; o < pixels[d].length; o++) {
      int x = pixels[d][o][0];
      int y = pixels[d][o][1];
      display(x, y, c);
    }
  }
}

//draw func
void display(int pixelX, int pixelY, color colour) {
  int squareSize = 30;
  int Xcoord = (pixelX - 1) * squareSize + (450 - squareSize * 7);
  int Ycoord = (pixelY - 1) * squareSize + (450 - squareSize * 8);
  fill(colour);
  stroke(colour);
  strokeWeight(0);
  rect(Xcoord, Ycoord, squareSize, squareSize);
  println("pixel", pixelX, ",", pixelY, "created at", Xcoord, ",", Ycoord);
}

//all colours
color [] allColours = {#09251e, #281d0a, #493616, #674d1d, #886727, #0e4036, #166357, #208978, #2ac8a9, #33eccb, #a4fdef};

//all coords for each colour
int [] [] [] pixels = { { {16, 2}, {16, 3}, {15, 4}, {14, 5}, {13, 6}, {12, 7}, {11, 8}, {10, 9}, {9, 10}, {8, 11}, {6, 9}, {9, 12}, {10, 13}, {10, 14}, {9, 14}, {8, 13}, {7, 13}, {6, 12}, {3, 15}, {3, 16}, {2, 16}, {1, 16}}, //#09251e 
  { {5, 13}, {4, 14} }, //#281d0a
  { {4, 12}, {3, 13} }, //#493616
  { {5, 12}, {3, 14} }, //#674d1d
  { {4, 13} }, //#886727
  { {16, 1}, {15, 1}, {14, 1}, {13, 2}, {12, 3}, {11, 4}, {10, 5}, {9, 6}, {8, 7}, {7, 8}, {5, 8}, {4, 7}, {3, 7}, {3, 8}, {4, 9}, {4, 10}, {5, 11}, {7, 11}, {7, 12}, {8, 12}, {9, 13}, {1, 15}, {1, 14}, {2, 14} }, //#0e4036
  { {2, 15}, {4, 8}, {6, 11}, {7, 10} }, //#166357
  { {5, 9}, {5, 10}, {6, 10}, {8, 9} }, //#208978
  { {9, 8}, {10, 7}, {11, 6}, {12, 5}, {13, 4}, {14, 3} }, //#2ac8a9
  { {7, 9}, {8, 10}, {8, 8}, {9, 9}, {10, 8}, {11, 7}, {12, 6}, {13, 5}, {9, 7} }, //#33eccb
  { {10, 6}, {11, 5}, {12, 4}, {13, 3}, {14, 2}, {15, 2}, {15, 3}, {14, 4} } }; //#a4fdef
