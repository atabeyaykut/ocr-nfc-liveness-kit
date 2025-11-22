package androidx.camera.core;

/* loaded from: classes.dex */
public final /* synthetic */ class f0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f691a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f692b;

    public /* synthetic */ f0(int r12, Object obj) {
        this.f691a = r12;
        this.f692b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f691a;
        Object obj = this.f692b;
        switch (r02) {
            case 0:
                ((m5.a) obj).cancel(true);
                break;
            default:
                ((VideoCapture) obj).lambda$onDetached$6();
                break;
        }
    }
}
