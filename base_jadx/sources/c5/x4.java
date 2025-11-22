package c5;

import android.content.Context;
import java.util.Map;
import org.checkerframework.dataflow.qual.Pure;

/* loaded from: classes.dex */
public class x4 implements z4, g3 {

    /* renamed from: a, reason: collision with root package name */
    public final z4 f2115a;

    public /* synthetic */ x4(i4 i4Var) {
        r3.r.i(i4Var);
        this.f2115a = i4Var;
    }

    @Override // c5.g3
    public final void a(String str, int r92, Throwable th2, byte[] bArr, Map map) {
        ((o7) this.f2115a).g(str, r92, th2, bArr, map);
    }

    public void b() {
        h4 h4Var = ((i4) this.f2115a).f1636k;
        i4.e(h4Var);
        h4Var.b();
    }

    @Override // c5.z4
    @Pure
    public final w3.a i() {
        throw null;
    }

    @Override // c5.z4
    @Pure
    public final com.google.android.gms.internal.clearcut.z j() {
        throw null;
    }

    @Override // c5.z4
    @Pure
    public final Context k() {
        throw null;
    }

    @Override // c5.z4
    @Pure
    public final h4 l() {
        throw null;
    }

    @Override // c5.z4
    @Pure
    public final e3 m() {
        throw null;
    }
}
