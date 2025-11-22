package h6;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public final class q implements h5.j<Boolean, Void> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ h5.k f6952a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ t f6953b;

    public q(t tVar, h5.z zVar) {
        this.f6953b = tVar;
        this.f6952a = zVar;
    }

    @Override // h5.j
    @NonNull
    public final h5.k<Void> c(@Nullable Boolean bool) throws Exception {
        return this.f6953b.f6962d.b(new p(this, bool));
    }
}
