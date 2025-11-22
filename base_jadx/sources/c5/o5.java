package c5;

import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class o5 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1808a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f1809b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f1810c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f1811d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f1812e;
    public final /* synthetic */ Object f;

    public o5(v5 v5Var, AtomicReference atomicReference, String str, String str2, boolean z10) {
        this.f = v5Var;
        this.f1812e = atomicReference;
        this.f1809b = str;
        this.f1810c = str2;
        this.f1811d = z10;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        int r02 = this.f1808a;
        Object obj = this.f1812e;
        Object obj2 = this.f;
        switch (r02) {
            case 0:
                t6 t6VarS = ((i4) ((v5) obj2).f2115a).s();
                String str = this.f1809b;
                String str2 = this.f1810c;
                boolean z10 = this.f1811d;
                t6VarS.b();
                t6VarS.c();
                t6VarS.t(new q6(t6VarS, (AtomicReference) obj, str, str2, t6VarS.q(false), z10));
                break;
            default:
                t6 t6VarS2 = ((AppMeasurementDynamiteService) obj2).f4197a.s();
                String str3 = this.f1809b;
                String str4 = this.f1810c;
                boolean z11 = this.f1811d;
                t6VarS2.b();
                t6VarS2.c();
                t6VarS2.t(new g6(t6VarS2, str3, str4, t6VarS2.q(false), z11, (com.google.android.gms.internal.measurement.y0) obj));
                break;
        }
    }

    public o5(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.y0 y0Var, String str, String str2, boolean z10) {
        this.f = appMeasurementDynamiteService;
        this.f1812e = y0Var;
        this.f1809b = str;
        this.f1810c = str2;
        this.f1811d = z10;
    }
}
