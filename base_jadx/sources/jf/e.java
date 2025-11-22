package jf;

/* loaded from: classes3.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final long f8506a;

    public e(long j10) {
        if (j10 >= 1) {
            this.f8506a = j10;
        } else {
            throw new IllegalArgumentException("Time step must be positive: " + j10);
        }
    }
}
