package y5;

import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.lifecycle.CoroutineLiveDataKt;
import androidx.work.WorkRequest;
import c5.w5;
import com.google.android.gms.internal.measurement.d2;
import com.google.android.gms.internal.measurement.g1;
import com.google.android.gms.internal.measurement.h1;
import com.google.android.gms.internal.measurement.i1;
import com.google.android.gms.internal.measurement.l1;
import com.google.android.gms.internal.measurement.m1;
import com.google.android.gms.internal.measurement.o1;
import com.google.android.gms.internal.measurement.p1;
import com.google.android.gms.internal.measurement.q1;
import com.google.android.gms.internal.measurement.r0;
import com.google.android.gms.internal.measurement.r1;
import com.google.android.gms.internal.measurement.s1;
import com.google.android.gms.internal.measurement.v1;
import com.google.android.gms.internal.measurement.w1;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

/* loaded from: classes2.dex */
public final class a implements w5 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d2 f19319a;

    public a(d2 d2Var) {
        this.f19319a = d2Var;
    }

    @Override // c5.w5
    public final long b() {
        d2 d2Var = this.f19319a;
        d2Var.getClass();
        r0 r0Var = new r0();
        d2Var.b(new p1(d2Var, r0Var, 0));
        Long l5 = (Long) r0.z0(Long.class, r0Var.x0(500L));
        if (l5 != null) {
            return l5.longValue();
        }
        long jNextLong = new Random(System.nanoTime() ^ System.currentTimeMillis()).nextLong();
        int r32 = d2Var.f3438d + 1;
        d2Var.f3438d = r32;
        return jNextLong + r32;
    }

    @Override // c5.w5
    @Nullable
    public final String f() {
        d2 d2Var = this.f19319a;
        d2Var.getClass();
        r0 r0Var = new r0();
        d2Var.b(new o1(d2Var, r0Var));
        return r0Var.y0(500L);
    }

    @Override // c5.w5
    @Nullable
    public final String h() {
        d2 d2Var = this.f19319a;
        d2Var.getClass();
        r0 r0Var = new r0();
        d2Var.b(new r1(d2Var, r0Var));
        return r0Var.y0(500L);
    }

    @Override // c5.w5
    @Nullable
    public final String i() {
        d2 d2Var = this.f19319a;
        d2Var.getClass();
        r0 r0Var = new r0();
        d2Var.b(new g1(d2Var, r0Var, 1));
        return r0Var.y0(50L);
    }

    @Override // c5.w5
    @Nullable
    public final String m() {
        d2 d2Var = this.f19319a;
        d2Var.getClass();
        r0 r0Var = new r0();
        d2Var.b(new q1(d2Var, r0Var));
        return r0Var.y0(500L);
    }

    @Override // c5.w5
    public final List<Bundle> n(@Nullable String str, @Nullable String str2) {
        d2 d2Var = this.f19319a;
        d2Var.getClass();
        r0 r0Var = new r0();
        d2Var.b(new i1(d2Var, str, str2, r0Var));
        List<Bundle> list = (List) r0.z0(List.class, r0Var.x0(CoroutineLiveDataKt.DEFAULT_TIMEOUT));
        return list == null ? Collections.emptyList() : list;
    }

    @Override // c5.w5
    public final Map<String, Object> o(@Nullable String str, @Nullable String str2, boolean z10) {
        d2 d2Var = this.f19319a;
        d2Var.getClass();
        r0 r0Var = new r0();
        d2Var.b(new s1(d2Var, str, str2, z10, r0Var));
        Bundle bundleX0 = r0Var.x0(CoroutineLiveDataKt.DEFAULT_TIMEOUT);
        if (bundleX0 == null || bundleX0.size() == 0) {
            return Collections.emptyMap();
        }
        HashMap map = new HashMap(bundleX0.size());
        for (String str3 : bundleX0.keySet()) {
            Object obj = bundleX0.get(str3);
            if ((obj instanceof Double) || (obj instanceof Long) || (obj instanceof String)) {
                map.put(str3, obj);
            }
        }
        return map;
    }

    @Override // c5.w5
    public final void p(Bundle bundle) {
        d2 d2Var = this.f19319a;
        d2Var.getClass();
        d2Var.b(new g1(d2Var, bundle, 0));
    }

    @Override // c5.w5
    public final void q(String str, String str2, Bundle bundle) {
        d2 d2Var = this.f19319a;
        d2Var.getClass();
        d2Var.b(new w1(d2Var, str, str2, bundle, true));
    }

    @Override // c5.w5
    public final void r(String str) {
        d2 d2Var = this.f19319a;
        d2Var.getClass();
        d2Var.b(new l1(d2Var, str));
    }

    @Override // c5.w5
    public final void s(String str, @Nullable String str2, @Nullable Bundle bundle) {
        d2 d2Var = this.f19319a;
        d2Var.getClass();
        d2Var.b(new h1(d2Var, str, str2, bundle));
    }

    @Override // c5.w5
    public final void t(String str) {
        d2 d2Var = this.f19319a;
        d2Var.getClass();
        d2Var.b(new m1(d2Var, str));
    }

    @Override // c5.w5
    public final int u(String str) {
        d2 d2Var = this.f19319a;
        d2Var.getClass();
        r0 r0Var = new r0();
        d2Var.b(new v1(d2Var, str, r0Var));
        Integer num = (Integer) r0.z0(Integer.class, r0Var.x0(WorkRequest.MIN_BACKOFF_MILLIS));
        if (num == null) {
            return 25;
        }
        return num.intValue();
    }
}
