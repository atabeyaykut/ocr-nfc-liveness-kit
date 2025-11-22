package nc;

/* loaded from: classes2.dex */
public final class m0 implements v0 {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f10814a;

    public m0(boolean z10) {
        this.f10814a = z10;
    }

    @Override // nc.v0
    public final boolean b() {
        return this.f10814a;
    }

    @Override // nc.v0
    public final l1 p() {
        return null;
    }

    public final String toString() {
        return android.support.v4.media.a.h(new StringBuilder("Empty{"), this.f10814a ? "Active" : "New", '}');
    }
}
