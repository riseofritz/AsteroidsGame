Stars[] sky = new Stars[555];
Spaceship fly;
ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>(); 

public void setup() {
    size(800, 800);
    fly = new Spaceship();

    // Initialize stars
    for (int i = 0; i < sky.length; i++) {
        sky[i] = new Stars();
    }

    // Initialize asteroids
    for (int i = 0; i < 16; i++) {
        asteroids.add(new Asteroid());
    }
}

public void draw() {
    background(0);

    // Show stars
    for (int i = 0; i < sky.length; i++) {
        sky[i].show();
    }

    for (int i = asteroids.size() - 1; i >= 0; i--) { 
        Asteroid asteroid = asteroids.get(i);
        asteroid.show();
        asteroid.move();

        // Check for collision with spaceship
        double dx = fly.myCenterX - asteroid.getCenterX();
        double dy = fly.myCenterY - asteroid.getCenterY();
        double distanceSquared = dx * dx + dy * dy;

        if (distanceSquared < 400) { 
            asteroids.remove(i); // Remove asteroid from ArrayList
        }
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
    if (key == 'H' || key == 'h') {
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
