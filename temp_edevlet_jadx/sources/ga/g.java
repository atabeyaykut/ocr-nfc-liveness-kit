package ga;

import ga.f;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import jb.a;

/* loaded from: classes2.dex */
public abstract class g {

    public static final class a extends g {

        /* renamed from: a, reason: collision with root package name */
        public final Field f6001a;

        public a(Field field) {
            kotlin.jvm.internal.h.f(field, "field");
            this.f6001a = field;
        }

        @Override // ga.g
        public final String a() {
            StringBuilder sb2 = new StringBuilder();
            Field field = this.f6001a;
            String name = field.getName();
            kotlin.jvm.internal.h.e(name, "field.name");
            sb2.append(va.w.a(name));
            sb2.append("()");
            Class<?> type = field.getType();
            kotlin.jvm.internal.h.e(type, "field.type");
            sb2.append(sa.d.b(type));
            return sb2.toString();
        }
    }

    public static final class b extends g {

        /* renamed from: a, reason: collision with root package name */
        public final Method f6002a;

        /* renamed from: b, reason: collision with root package name */
        public final Method f6003b;

        public b(Method getterMethod, Method method) {
            kotlin.jvm.internal.h.f(getterMethod, "getterMethod");
            this.f6002a = getterMethod;
            this.f6003b = method;
        }

        @Override // ga.g
        public final String a() {
            return com.google.android.gms.internal.clearcut.d0.c(this.f6002a);
        }
    }

    public static final class c extends g {

        /* renamed from: a, reason: collision with root package name */
        public final ma.l0 f6004a;

        /* renamed from: b, reason: collision with root package name */
        public final gb.m f6005b;

        /* renamed from: c, reason: collision with root package name */
        public final a.c f6006c;

        /* renamed from: d, reason: collision with root package name */
        public final ib.c f6007d;

        /* renamed from: e, reason: collision with root package name */
        public final ib.g f6008e;
        public final String f;

        /* JADX WARN: Removed duplicated region for block: B:29:0x00f3  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public c(ma.l0 r4, gb.m r5, jb.a.c r6, ib.c r7, ib.g r8) {
            /*
                Method dump skipped, instructions count: 285
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: ga.g.c.<init>(ma.l0, gb.m, jb.a$c, ib.c, ib.g):void");
        }

        @Override // ga.g
        public final String a() {
            return this.f;
        }
    }

    public static final class d extends g {

        /* renamed from: a, reason: collision with root package name */
        public final f.e f6009a;

        /* renamed from: b, reason: collision with root package name */
        public final f.e f6010b;

        public d(f.e eVar, f.e eVar2) {
            this.f6009a = eVar;
            this.f6010b = eVar2;
        }

        @Override // ga.g
        public final String a() {
            return this.f6009a.f5995b;
        }
    }

    public abstract String a();
}
