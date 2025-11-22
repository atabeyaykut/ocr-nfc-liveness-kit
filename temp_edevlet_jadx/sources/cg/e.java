package cg;

import java.lang.ref.WeakReference;
import tr.gov.turkiye.edevlet.kapisi.login.LoginActivity;

/* loaded from: classes3.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final int f2400a;

    /* renamed from: b, reason: collision with root package name */
    public final WeakReference<LoginActivity> f2401b;

    public e(LoginActivity target, int r32) {
        kotlin.jvm.internal.h.f(target, "target");
        this.f2400a = r32;
        this.f2401b = new WeakReference<>(target);
    }
}
