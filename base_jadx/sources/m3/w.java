package m3;

import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public abstract class w extends u {

    /* renamed from: d, reason: collision with root package name */
    public static final WeakReference f9971d = new WeakReference(null);

    /* renamed from: c, reason: collision with root package name */
    public WeakReference f9972c;

    public w(byte[] bArr) {
        super(bArr);
        this.f9972c = f9971d;
    }

    @Override // m3.u
    public final byte[] y0() {
        byte[] bArrZ0;
        synchronized (this) {
            bArrZ0 = (byte[]) this.f9972c.get();
            if (bArrZ0 == null) {
                bArrZ0 = z0();
                this.f9972c = new WeakReference(bArrZ0);
            }
        }
        return bArrZ0;
    }

    public abstract byte[] z0();
}
