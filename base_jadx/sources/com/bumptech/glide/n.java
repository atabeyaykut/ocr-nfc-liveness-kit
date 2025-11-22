package com.bumptech.glide;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.Log;
import android.widget.ImageView;
import androidx.annotation.CheckResult;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.manager.r;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public final class n<TranscodeType> extends m1.a<n<TranscodeType>> {
    public final Context D;
    public final o E;
    public final Class<TranscodeType> F;
    public final h G;

    @NonNull
    public p<?, ? super TranscodeType> H;

    @Nullable
    public Object I;

    @Nullable
    public ArrayList K;

    @Nullable
    public n<TranscodeType> L;

    @Nullable
    public n<TranscodeType> M;
    public boolean N = true;
    public boolean O;
    public boolean P;

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f2830a;

        /* renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f2831b;

        static {
            int[] r02 = new int[j.values().length];
            f2831b = r02;
            try {
                r02[3] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2831b[2] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2831b[1] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2831b[0] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] r42 = new int[ImageView.ScaleType.values().length];
            f2830a = r42;
            try {
                r42[ImageView.ScaleType.CENTER_CROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2830a[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2830a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f2830a[ImageView.ScaleType.FIT_START.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f2830a[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f2830a[ImageView.ScaleType.FIT_XY.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f2830a[ImageView.ScaleType.CENTER.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f2830a[ImageView.ScaleType.MATRIX.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    static {
    }

    @SuppressLint({"CheckResult"})
    public n(@NonNull b bVar, o oVar, Class<TranscodeType> cls, Context context) {
        m1.g gVar;
        this.E = oVar;
        this.F = cls;
        this.D = context;
        Map<Class<?>, p<?, ?>> map = oVar.f2833a.f2708c.f;
        p value = map.get(cls);
        if (value == null) {
            for (Map.Entry<Class<?>, p<?, ?>> entry : map.entrySet()) {
                if (entry.getKey().isAssignableFrom(cls)) {
                    value = entry.getValue();
                }
            }
        }
        this.H = value == null ? h.f2712k : value;
        this.G = bVar.f2708c;
        Iterator<m1.f<Object>> it = oVar.f2840j.iterator();
        while (it.hasNext()) {
            u((m1.f) it.next());
        }
        synchronized (oVar) {
            gVar = oVar.f2841k;
        }
        v(gVar);
    }

    @NonNull
    public final n<TranscodeType> A(@Nullable Object obj) {
        if (this.f9884y) {
            return clone().A(obj);
        }
        this.I = obj;
        this.O = true;
        l();
        return this;
    }

    public final m1.i B(int r18, int r19, j jVar, p pVar, m1.a aVar, m1.e eVar, n1.g gVar, Object obj) {
        Context context = this.D;
        Object obj2 = this.I;
        Class<TranscodeType> cls = this.F;
        ArrayList arrayList = this.K;
        h hVar = this.G;
        return new m1.i(context, hVar, obj, obj2, cls, aVar, r18, r19, jVar, gVar, arrayList, eVar, hVar.f2718g, pVar.f2845a);
    }

    @NonNull
    @CheckResult
    public final n C(@NonNull g1.d dVar) {
        if (this.f9884y) {
            return clone().C(dVar);
        }
        this.H = dVar;
        this.N = false;
        l();
        return this;
    }

    @Override // m1.a
    @NonNull
    @CheckResult
    public final m1.a b(@NonNull m1.a aVar) {
        q1.l.b(aVar);
        return (n) super.b(aVar);
    }

    @Override // m1.a
    public final boolean equals(Object obj) {
        if (obj instanceof n) {
            n nVar = (n) obj;
            if (super.equals(nVar)) {
                if (Objects.equals(this.F, nVar.F) && this.H.equals(nVar.H) && Objects.equals(this.I, nVar.I) && Objects.equals(this.K, nVar.K) && Objects.equals(this.L, nVar.L) && Objects.equals(this.M, nVar.M) && this.N == nVar.N && this.O == nVar.O) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // m1.a
    public final int hashCode() {
        return q1.m.g(q1.m.g(q1.m.f(q1.m.f(q1.m.f(q1.m.f(q1.m.f(q1.m.f(q1.m.f(super.hashCode(), this.F), this.H), this.I), this.K), this.L), this.M), null), this.N), this.O);
    }

    @NonNull
    @CheckResult
    public final n<TranscodeType> u(@Nullable m1.f<TranscodeType> fVar) {
        if (this.f9884y) {
            return clone().u(fVar);
        }
        if (fVar != null) {
            if (this.K == null) {
                this.K = new ArrayList();
            }
            this.K.add(fVar);
        }
        l();
        return this;
    }

    @NonNull
    @CheckResult
    public final n<TranscodeType> v(@NonNull m1.a<?> aVar) {
        q1.l.b(aVar);
        return (n) super.b(aVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0107  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final m1.d w(int r19, int r20, com.bumptech.glide.j r21, com.bumptech.glide.p r22, m1.a r23, @androidx.annotation.Nullable m1.e r24, n1.g r25, java.lang.Object r26) {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.n.w(int, int, com.bumptech.glide.j, com.bumptech.glide.p, m1.a, m1.e, n1.g, java.lang.Object):m1.d");
    }

    @Override // m1.a
    @CheckResult
    /* renamed from: x, reason: merged with bridge method [inline-methods] */
    public final n<TranscodeType> clone() {
        n<TranscodeType> nVar = (n) super.clone();
        nVar.H = nVar.H.clone();
        if (nVar.K != null) {
            nVar.K = new ArrayList(nVar.K);
        }
        n<TranscodeType> nVar2 = nVar.L;
        if (nVar2 != null) {
            nVar.L = nVar2.clone();
        }
        n<TranscodeType> nVar3 = nVar.M;
        if (nVar3 != null) {
            nVar.M = nVar3.clone();
        }
        return nVar;
    }

    public final void z(@NonNull n1.g gVar, m1.a aVar) {
        q1.l.b(gVar);
        if (!this.O) {
            throw new IllegalArgumentException("You must call #load() before calling #into()");
        }
        Object obj = new Object();
        m1.d dVarW = w(aVar.f9874l, aVar.f9873k, aVar.f9868d, this.H, aVar, null, gVar, obj);
        m1.d dVarA = gVar.a();
        if (dVarW.b(dVarA)) {
            if (!(!aVar.f9872j && dVarA.j())) {
                q1.l.b(dVarA);
                if (dVarA.isRunning()) {
                    return;
                }
                dVarA.i();
                return;
            }
        }
        this.E.k(gVar);
        gVar.j(dVarW);
        o oVar = this.E;
        synchronized (oVar) {
            oVar.f.f2829a.add(gVar);
            r rVar = oVar.f2836d;
            rVar.f2795a.add(dVarW);
            if (rVar.f2797c) {
                dVarW.clear();
                if (Log.isLoggable("RequestTracker", 2)) {
                    Log.v("RequestTracker", "Paused, delaying request");
                }
                rVar.f2796b.add(dVarW);
            } else {
                dVarW.i();
            }
        }
    }
}
