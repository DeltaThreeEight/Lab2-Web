package Lab_2;

import java.io.Serializable;

public class Point implements Serializable {
    private double x;
    private double y;
    private double R;
    private boolean hit;
    private int n;

    Point (double x, double y, double r, int n){
        this.x = x;
        this.y = y;
        this.R = r;
        this.n = n;
        hit = checkArea(x, y, R);
    }

    static boolean checkArea(double x, double y, double r){

        boolean circle = ((Math.pow(x, 2) + Math.pow(y, 2) <= (Math.pow(r / 2, 2))) && y >= 0 && x >= 0);
        boolean square = (x >= (-r) && y >= (-r) && y <= 0 && x <= 0);
        boolean triangle = (y <= (x + r) && y >= 0 && x <= 0 && x >= -r);

        return square || triangle || circle;
    }

    public double getX() {
        return (double)Math.round(x * 1000d) / 1000d;
    }

    public double getY() {
        return (double)Math.round(y * 1000d) / 1000d;
    }

    public double getR() {
        return R;
    }

    public boolean isHit() {
        return hit;
    }

    public int getN() {
        return n;
    }
}
