package o3;

import java.util.ArrayDeque;

/* loaded from: classes.dex */
public final class w implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11195a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f11196b;

    public /* synthetic */ w(int r12, Object obj) {
        this.f11195a = r12;
        this.f11196b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f11195a;
        Object obj = this.f11196b;
        switch (r02) {
            case 0:
                ((a0) obj).e();
                break;
            default:
                v7.i.f18269b.set(new ArrayDeque());
                ((Runnable) obj).run();
                break;
        }
    }
}
