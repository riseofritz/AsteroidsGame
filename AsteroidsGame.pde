Star[] sky = new Star[555];
Spaceship fly;

public void setup() {
    size(800, 800);
    fly = new Spaceship();
    for (int i = 0; i < sky.length; i++) {
        sky[i] = new Star();
    }
}

public void draw() {
    background(0);
    for (int i = 0; i < sky.length; i++) {
        sky[i].show();
    }
    fly.move();
    fly.show();
}

public void keyPressed() {
    if (key == 'W' || key == 'w') {
        fly.setAccelerating(true);
    }
    if (key == 'S' || key == 's') {
        fly.setDecelerating(true);
    }
    if (key == 'A' || key == 'a') {
        fly.setTurningLeft(true);
    }
    if (key == 'D' || key == 'd') {
        fly.setTurningRight(true);
    }
    if (key == 'H' || key == 'h'){
        fly.hyperspace();
    }
}

public void keyReleased() {
    if (key == 'W' || key == 'w') {
        fly.setAccelerating(false);
    }
    if (key == 'S' || key == 's') {
        fly.setDecelerating(false);
    }
    if (key == 'A' || key == 'a') {
        fly.setTurningLeft(false);
    }
    if (key == 'D' || key == 'd') {
        fly.setTurningRight(false);
    }
}

class Star {
    private int myX, myY, myColor;

    public Star() {
        myX = (int)(Math.random() * 800);
        myY = (int)(Math.random() * 800);
        myColor = color((int)(Math.random() * 250), (int)(Math.random() * 250), (int)(Math.random() * 250));
    }

    public void show() {
        fill(myColor);
        ellipse(myX, myY, 3, 3);
    }
}
