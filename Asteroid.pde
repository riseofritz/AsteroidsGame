class Asteroid extends Floater {
    private double rotationSpeed; 

    public Asteroid() {
        corners = 6; 
        xCorners = new int[] {10, 20, 30, 25, 15, 5};
        yCorners = new int[] {0, 10, 0, -15, -20, -10};
        myColor = color(200); 
        myCenterX = Math.random() * 800; 
        myCenterY = Math.random() * 800; 
        myXspeed = Math.random() * 2 - 1; 
        myYspeed = Math.random() * 2 - 1; 
        myPointDirection = Math.random() * 360; 
        rotationSpeed = Math.random() * 2 - 1; 
    }

    public void move() {
        super.move();
        turn(rotationSpeed);
    }

    public double getCenterX() {
        return myCenterX;
    }

    public double getCenterY() {
        return myCenterY;
    }
}
