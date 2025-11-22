package o3;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import n3.e;

/* loaded from: classes.dex */
public final class o implements e.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BasePendingResult f11172a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ q f11173b;

    public o(q qVar, com.google.android.gms.common.api.internal.a aVar) {
        this.f11173b = qVar;
        this.f11172a = aVar;
    }

    @Override // n3.e.a
    public final void a(Status status) {
        this.f11173b.f11183a.remove(this.f11172a);
    }
}
