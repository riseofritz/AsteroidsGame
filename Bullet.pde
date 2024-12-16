class Bullet extends Floater {
    Bullet(Spaceship theShip) {
        myColor = color(255);
        myCenterX = theShip.getCenterX()+55;  
        myCenterY = theShip.getCenterY()+30;  
        myXspeed = theShip.getXSpeed();   
        myYspeed = theShip.getYSpeed();   
        myPointDirection = theShip.returnPtDirection();  
        accelerate(5);
    }
    
    public void show() { 
        fill(myColor);
        stroke(myColor);
        ellipse((float)myCenterX, (float)myCenterY, 7, 7);
    }
    
    public void move() {
        myCenterX += myXspeed;
        myCenterY += myYspeed;
    }
    
    public double getCenterX() {
        return myCenterX;
    }
    
    public double getCenterY() {
        return myCenterY;
    }
}
