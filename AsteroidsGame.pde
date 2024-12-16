Stars[] sky = new Stars[555];
Spaceship fly;
ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();
ArrayList<Bullet> bullets = new ArrayList<Bullet>(); 

public void setup() {
    size(800, 800);
    fly = new Spaceship();

    // Initialize stars
    for (int i = 0; i < sky.length; i++) {
        sky[i] = new Stars();
    }

    // Initialize asteroids
    for (int i = 0; i < 47; i++) {
        asteroids.add(new Asteroid());
    }
}

public void draw() {
    background(0);

   
    for (int i = 0; i < sky.length; i++) {
        sky[i].show();
    }

    
    for (int i = asteroids.size() - 1; i >= 0; i--) {
        asteroids.get(i).move();
        asteroids.get(i).show();

        // Check for collision with spaceship
        if (dist((float)fly.myCenterX, (float)fly.myCenterY, (float)asteroids.get(i).getCenterX(), (float)asteroids.get(i).getCenterY()) < 47) {
            asteroids.remove(i);  // Remove asteroid on collision
        }

        // Check for collision with bullets
        for (int j = bullets.size() - 1; j >= 0; j--) {
            if (dist((float)bullets.get(j).getCenterX(), (float)bullets.get(j).getCenterY(), (float)asteroids.get(i).getCenterX(), (float)asteroids.get(i).getCenterY()) < 15) {
                asteroids.remove(i);  // Remove asteroid on bullet collision
                bullets.remove(j);    // Remove bullet
                
            }
        }
    }

    
    for (int i = bullets.size() - 1; i >= 0; i--) {
        bullets.get(i).move();
        bullets.get(i).show();

        // Remove bullets that are off-screen
        if (bullets.get(i).getCenterX() < 0 || bullets.get(i).getCenterX() > width || bullets.get(i).getCenterY() < 0 || bullets.get(i).getCenterY() > height) {
            bullets.remove(i);
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

    
    if (key == ' ' || key == 'k') {
        bullets.add(new Bullet(fly)); // Create a new bullet from the spaceship
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
