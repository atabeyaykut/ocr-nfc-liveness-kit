package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.x;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class p {

    /* renamed from: b, reason: collision with root package name */
    public static volatile p f4338b;

    /* renamed from: c, reason: collision with root package name */
    public static final p f4339c = new p(0);

    /* renamed from: a, reason: collision with root package name */
    public final Map<a, x.e<?, ?>> f4340a;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final Object f4341a;

        /* renamed from: b, reason: collision with root package name */
        public final int f4342b;

        public a(int r12, Object obj) {
            this.f4341a = obj;
            this.f4342b = r12;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f4341a == aVar.f4341a && this.f4342b == aVar.f4342b;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.f4341a) * 65535) + this.f4342b;
        }
    }

    public p() {
        this.f4340a = new HashMap();
    }

    public p(int r12) {
        this.f4340a = Collections.emptyMap();
    }

    public static p a() {
        p pVar = f4338b;
        if (pVar == null) {
            synchronized (p.class) {
                pVar = f4338b;
                if (pVar == null) {
                    Class<?> cls = o.f4336a;
                    p pVar2 = null;
                    if (cls != null) {
                        try {
                            pVar2 = (p) cls.getDeclaredMethod("getEmptyRegistry", new Class[0]).invoke(null, new Object[0]);
                        } catch (Exception unused) {
                        }
                    }
                    if (pVar2 == null) {
                        pVar2 = f4339c;
                    }
                    f4338b = pVar2;
                    pVar = pVar2;
                }
            }
        }
        return pVar;
    }
}
