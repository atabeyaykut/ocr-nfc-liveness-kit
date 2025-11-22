package a5;

import android.os.Bundle;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.collection.ArrayMap;
import androidx.lifecycle.CoroutineLiveDataKt;
import c5.b6;
import c5.e3;
import c5.f6;
import c5.h4;
import c5.i4;
import c5.n5;
import c5.o5;
import c5.r7;
import c5.u1;
import c5.v5;
import c5.v7;
import com.google.android.gms.internal.clearcut.z;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import r3.r;

/* loaded from: classes.dex */
public final class a extends c {

    /* renamed from: a, reason: collision with root package name */
    public final i4 f107a;

    /* renamed from: b, reason: collision with root package name */
    public final v5 f108b;

    public a(@NonNull i4 i4Var) {
        r.i(i4Var);
        this.f107a = i4Var;
        v5 v5Var = i4Var.f1642r;
        i4.d(v5Var);
        this.f108b = v5Var;
    }

    @Override // c5.w5
    public final long b() {
        v7 v7Var = this.f107a.f1638m;
        i4.c(v7Var);
        return v7Var.l0();
    }

    @Override // c5.w5
    public final String f() {
        return this.f108b.A();
    }

    @Override // c5.w5
    public final String h() {
        f6 f6Var = ((i4) this.f108b.f2115a).f1641q;
        i4.d(f6Var);
        b6 b6Var = f6Var.f1547c;
        if (b6Var != null) {
            return b6Var.f1420b;
        }
        return null;
    }

    @Override // c5.w5
    public final String i() {
        return this.f108b.A();
    }

    @Override // c5.w5
    public final String m() {
        f6 f6Var = ((i4) this.f108b.f2115a).f1641q;
        i4.d(f6Var);
        b6 b6Var = f6Var.f1547c;
        if (b6Var != null) {
            return b6Var.f1419a;
        }
        return null;
    }

    @Override // c5.w5
    public final List<Bundle> n(String str, String str2) {
        v5 v5Var = this.f108b;
        i4 i4Var = (i4) v5Var.f2115a;
        h4 h4Var = i4Var.f1636k;
        i4.e(h4Var);
        boolean zR = h4Var.r();
        e3 e3Var = i4Var.f1635j;
        if (zR) {
            i4.e(e3Var);
            e3Var.f.a("Cannot get conditional user properties from analytics worker thread");
            return new ArrayList(0);
        }
        if (z.c()) {
            i4.e(e3Var);
            e3Var.f.a("Cannot get conditional user properties from main thread");
            return new ArrayList(0);
        }
        AtomicReference atomicReference = new AtomicReference();
        h4 h4Var2 = i4Var.f1636k;
        i4.e(h4Var2);
        h4Var2.h(atomicReference, CoroutineLiveDataKt.DEFAULT_TIMEOUT, "get conditional user properties", new n5(v5Var, atomicReference, str, str2));
        List list = (List) atomicReference.get();
        if (list != null) {
            return v7.q(list);
        }
        i4.e(e3Var);
        e3Var.f.b(null, "Timed out waiting for get conditional user properties");
        return new ArrayList();
    }

    @Override // c5.w5
    public final Map<String, Object> o(String str, String str2, boolean z10) {
        String str3;
        v5 v5Var = this.f108b;
        i4 i4Var = (i4) v5Var.f2115a;
        h4 h4Var = i4Var.f1636k;
        i4.e(h4Var);
        boolean zR = h4Var.r();
        e3 e3Var = i4Var.f1635j;
        if (zR) {
            i4.e(e3Var);
            str3 = "Cannot get user properties from analytics worker thread";
        } else {
            if (!z.c()) {
                AtomicReference atomicReference = new AtomicReference();
                h4 h4Var2 = i4Var.f1636k;
                i4.e(h4Var2);
                h4Var2.h(atomicReference, CoroutineLiveDataKt.DEFAULT_TIMEOUT, "get user properties", new o5(v5Var, atomicReference, str, str2, z10));
                List<r7> list = (List) atomicReference.get();
                if (list == null) {
                    i4.e(e3Var);
                    e3Var.f.b(Boolean.valueOf(z10), "Timed out waiting for handle get user properties, includeInternal");
                    return Collections.emptyMap();
                }
                ArrayMap arrayMap = new ArrayMap(list.size());
                for (r7 r7Var : list) {
                    Object objE = r7Var.E();
                    if (objE != null) {
                        arrayMap.put(r7Var.f1951b, objE);
                    }
                }
                return arrayMap;
            }
            i4.e(e3Var);
            str3 = "Cannot get user properties from main thread";
        }
        e3Var.f.a(str3);
        return Collections.emptyMap();
    }

    @Override // c5.w5
    public final void p(Bundle bundle) throws IllegalStateException {
        v5 v5Var = this.f108b;
        ((i4) v5Var.f2115a).f1640p.getClass();
        v5Var.r(bundle, System.currentTimeMillis());
    }

    @Override // c5.w5
    public final void q(String str, String str2, Bundle bundle) throws IllegalStateException {
        v5 v5Var = this.f108b;
        ((i4) v5Var.f2115a).f1640p.getClass();
        v5Var.h(str, str2, bundle, true, true, System.currentTimeMillis());
    }

    @Override // c5.w5
    public final void r(String str) throws IllegalStateException {
        i4 i4Var = this.f107a;
        u1 u1VarG = i4Var.g();
        i4Var.f1640p.getClass();
        u1VarG.c(SystemClock.elapsedRealtime(), str);
    }

    @Override // c5.w5
    public final void s(String str, String str2, Bundle bundle) throws IllegalStateException {
        v5 v5Var = this.f107a.f1642r;
        i4.d(v5Var);
        v5Var.D(str, str2, bundle);
    }

    @Override // c5.w5
    public final void t(String str) throws IllegalStateException {
        i4 i4Var = this.f107a;
        u1 u1VarG = i4Var.g();
        i4Var.f1640p.getClass();
        u1VarG.d(SystemClock.elapsedRealtime(), str);
    }

    @Override // c5.w5
    public final int u(String str) {
        v5 v5Var = this.f108b;
        v5Var.getClass();
        r.f(str);
        ((i4) v5Var.f2115a).getClass();
        return 25;
    }
}
