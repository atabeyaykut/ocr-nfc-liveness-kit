package c5;

import android.os.Bundle;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class k5 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f1678a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f1679b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f1680c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Bundle f1681d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f1682e;
    public final /* synthetic */ boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ boolean f1683g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ String f1684h = null;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ v5 f1685j;

    public k5(v5 v5Var, String str, String str2, long j10, Bundle bundle, boolean z10, boolean z11, boolean z12) {
        this.f1685j = v5Var;
        this.f1678a = str;
        this.f1679b = str2;
        this.f1680c = j10;
        this.f1681d = bundle;
        this.f1682e = z10;
        this.f = z11;
        this.f1683g = z12;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException, IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        this.f1685j.p(this.f1678a, this.f1679b, this.f1680c, this.f1681d, this.f1682e, this.f, this.f1683g, this.f1684h);
    }
}
