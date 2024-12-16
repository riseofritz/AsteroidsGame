class Spaceship extends Floater {
    private boolean turningLeft = false;
    private boolean turningRight = false;
    private boolean accelerating = false;
    private boolean decelerating = false;

    public Spaceship() {
        corners = 4;
        xCorners = new int[] {-10, 0, -10, 20, -10};
        yCorners = new int[] {10, 0, -10, 0, 10};
        myColor = color(255);
        myCenterX = 40; 
        myCenterY = 30;
        myXspeed = 0;
        myYspeed = 0;
        myPointDirection = 0;
    }

    public double getCenterX() {
        return myCenterX;
    }

    public double getCenterY() {
        return myCenterY;
    }

    public double getXSpeed() {
        return myXspeed;
    }

    public double getYSpeed() {
        return myYspeed;
    }

    public double returnPtDirection() {
        return myPointDirection;
    }

    public void hyperspace() {
        myCenterX = (int)(Math.random() * 790);
        myCenterY = (int)(Math.random() * 790);
        myXspeed = 0;
        myYspeed = 0;
        myPointDirection = (int)(Math.random() * 361);
    }

    public void setTurningLeft(boolean turningLeft) {
        this.turningLeft = turningLeft;
    }

    public void setTurningRight(boolean turningRight) {
        this.turningRight = turningRight;
    }

    public void setAccelerating(boolean accelerating) {
        this.accelerating = accelerating;
    }

    public void setDecelerating(boolean decelerating) {
        this.decelerating = decelerating;
    }

    public void move() {
        if (turningLeft) {
            turn(-2);
        }
        if (turningRight) {
            turn(2);
        }
        if (accelerating) {
            accelerate(0.05);
        }
        if (decelerating) {
            accelerate(-0.05);
        }
        super.move();
    }

    public void show() {
        super.show();
    }
}
