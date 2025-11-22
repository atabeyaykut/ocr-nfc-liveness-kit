package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.i1;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class w0 {

    /* renamed from: b, reason: collision with root package name */
    public static volatile w0 f4110b;

    /* renamed from: c, reason: collision with root package name */
    public static volatile w0 f4111c;

    /* renamed from: d, reason: collision with root package name */
    public static final w0 f4112d = new w0(0);

    /* renamed from: a, reason: collision with root package name */
    public final Map<a, i1.d<?, ?>> f4113a;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final Object f4114a;

        /* renamed from: b, reason: collision with root package name */
        public final int f4115b;

        public a(int r12, Object obj) {
            this.f4114a = obj;
            this.f4115b = r12;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f4114a == aVar.f4114a && this.f4115b == aVar.f4115b;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.f4114a) * 65535) + this.f4115b;
        }
    }

    public w0() {
        this.f4113a = new HashMap();
    }

    public w0(int r12) {
        this.f4113a = Collections.emptyMap();
    }

    public static w0 b() {
        w0 w0Var = f4110b;
        if (w0Var == null) {
            synchronized (w0.class) {
                w0Var = f4110b;
                if (w0Var == null) {
                    w0Var = f4112d;
                    f4110b = w0Var;
                }
            }
        }
        return w0Var;
    }

    public final i1.d a(int r22, n2 n2Var) {
        return this.f4113a.get(new a(r22, n2Var));
    }
}
