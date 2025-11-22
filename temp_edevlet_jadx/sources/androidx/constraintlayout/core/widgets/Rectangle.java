package androidx.constraintlayout.core.widgets;

/* loaded from: classes.dex */
public class Rectangle {
    public int height;
    public int width;

    /* renamed from: x, reason: collision with root package name */
    public int f880x;

    /* renamed from: y, reason: collision with root package name */
    public int f881y;

    public boolean contains(int r32, int r42) {
        int r33;
        int r02 = this.f880x;
        return r32 >= r02 && r32 < r02 + this.width && r42 >= (r33 = this.f881y) && r42 < r33 + this.height;
    }

    public int getCenterX() {
        return (this.f880x + this.width) / 2;
    }

    public int getCenterY() {
        return (this.f881y + this.height) / 2;
    }

    public void grow(int r22, int r32) {
        this.f880x -= r22;
        this.f881y -= r32;
        this.width = (r22 * 2) + this.width;
        this.height = (r32 * 2) + this.height;
    }

    public boolean intersects(Rectangle rectangle) {
        int r02;
        int r12;
        int r03 = this.f880x;
        int r13 = rectangle.f880x;
        return r03 >= r13 && r03 < r13 + rectangle.width && (r02 = this.f881y) >= (r12 = rectangle.f881y) && r02 < r12 + rectangle.height;
    }

    public void setBounds(int r12, int r22, int r32, int r42) {
        this.f880x = r12;
        this.f881y = r22;
        this.width = r32;
        this.height = r42;
    }
}
