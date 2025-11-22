package androidx.appcompat.widget;

/* loaded from: classes.dex */
public final /* synthetic */ class w implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f444a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f445b;

    public /* synthetic */ w(int r12, Object obj) {
        this.f444a = r12;
        this.f445b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f444a;
        Object obj = this.f445b;
        switch (r02) {
            case 0:
                ((Toolbar) obj).invalidateMenu();
                break;
            default:
                a3.o oVar = (a3.o) obj;
                oVar.getClass();
                oVar.f103d.a(new androidx.camera.camera2.interop.c(4, oVar));
                break;
        }
    }
}
