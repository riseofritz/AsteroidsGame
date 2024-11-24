class Star {
    private int myX, myY, myColor;

    public Star() {
        myX = (int)(Math.random() * 800); // Ensure the screen size matches your sketch
        myY = (int)(Math.random() * 800);
        myColor = color((int)(Math.random() * 250), (int)(Math.random() * 250), (int)(Math.random() * 250));
    }

    public void show() {
        fill(myColor);
        ellipse(myX, myY, 3, 3);
    }
}
