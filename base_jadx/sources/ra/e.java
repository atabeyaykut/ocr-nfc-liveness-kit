package ra;

import com.google.android.gms.internal.clearcut.d0;
import eb.b;
import eb.s;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import mc.j;

/* loaded from: classes2.dex */
public final class e implements s {

    /* renamed from: a, reason: collision with root package name */
    public final Class<?> f14363a;

    /* renamed from: b, reason: collision with root package name */
    public final fb.a f14364b;

    public static final class a {
        /* JADX WARN: Removed duplicated region for block: B:30:0x0069  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static ra.e a(java.lang.Class r12) {
            /*
                java.lang.String r0 = "klass"
                kotlin.jvm.internal.h.f(r12, r0)
                fb.b r0 = new fb.b
                r0.<init>()
                ra.c.b(r12, r0)
                ra.e r1 = new ra.e
                fb.a$a r2 = r0.f5574g
                r3 = 0
                if (r2 == 0) goto L69
                int[] r2 = r0.f5569a
                if (r2 != 0) goto L19
                goto L69
            L19:
                kb.e r6 = new kb.e
                int[] r2 = r0.f5569a
                int r4 = r0.f5571c
                r4 = r4 & 8
                r5 = 1
                r7 = 0
                if (r4 == 0) goto L27
                r4 = 1
                goto L28
            L27:
                r4 = 0
            L28:
                r6.<init>(r2, r4)
                boolean r2 = r6.c()
                if (r2 != 0) goto L38
                java.lang.String[] r2 = r0.f5572d
                r0.f = r2
                r0.f5572d = r3
                goto L4f
            L38:
                fb.a$a r2 = r0.f5574g
                fb.a$a r4 = fb.a.EnumC0087a.CLASS
                if (r2 == r4) goto L48
                fb.a$a r4 = fb.a.EnumC0087a.FILE_FACADE
                if (r2 == r4) goto L48
                fb.a$a r4 = fb.a.EnumC0087a.MULTIFILE_CLASS_PART
                if (r2 != r4) goto L47
                goto L48
            L47:
                r5 = 0
            L48:
                if (r5 == 0) goto L4f
                java.lang.String[] r2 = r0.f5572d
                if (r2 != 0) goto L4f
                goto L69
            L4f:
                java.lang.String[] r2 = r0.f5575h
                if (r2 == 0) goto L56
                kb.a.b(r2)
            L56:
                fb.a r2 = new fb.a
                fb.a$a r5 = r0.f5574g
                java.lang.String[] r7 = r0.f5572d
                java.lang.String[] r8 = r0.f
                java.lang.String[] r9 = r0.f5573e
                java.lang.String r10 = r0.f5570b
                int r11 = r0.f5571c
                r4 = r2
                r4.<init>(r5, r6, r7, r8, r9, r10, r11)
                goto L6a
            L69:
                r2 = r3
            L6a:
                if (r2 != 0) goto L6d
                return r3
            L6d:
                r1.<init>(r12, r2)
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: ra.e.a.a(java.lang.Class):ra.e");
        }
    }

    public e() {
        throw null;
    }

    public e(Class cls, fb.a aVar) {
        this.f14363a = cls;
        this.f14364b = aVar;
    }

    @Override // eb.s
    public final fb.a a() {
        return this.f14364b;
    }

    @Override // eb.s
    public final void b(s.c cVar) {
        c.b(this.f14363a, cVar);
    }

    @Override // eb.s
    public final lb.b c() {
        return sa.d.a(this.f14363a);
    }

    @Override // eb.s
    public final void d(eb.b bVar) throws SecurityException {
        String str;
        String str2;
        String str3;
        Constructor<?>[] constructorArr;
        Class<?> klass = this.f14363a;
        kotlin.jvm.internal.h.f(klass, "klass");
        Method[] declaredMethods = klass.getDeclaredMethods();
        kotlin.jvm.internal.h.e(declaredMethods, "klass.declaredMethods");
        int length = declaredMethods.length;
        int r6 = 0;
        while (true) {
            str = "annotations";
            str2 = "parameterType";
            str3 = "sb.toString()";
            if (r6 >= length) {
                break;
            }
            Method method = declaredMethods[r6];
            lb.f fVarT = lb.f.t(method.getName());
            StringBuilder sb2 = new StringBuilder("(");
            Class<?>[] parameterTypes = method.getParameterTypes();
            kotlin.jvm.internal.h.e(parameterTypes, "method.parameterTypes");
            for (Class<?> parameterType : parameterTypes) {
                kotlin.jvm.internal.h.e(parameterType, "parameterType");
                sb2.append(sa.d.b(parameterType));
            }
            sb2.append(")");
            Class<?> returnType = method.getReturnType();
            kotlin.jvm.internal.h.e(returnType, "method.returnType");
            sb2.append(sa.d.b(returnType));
            String string = sb2.toString();
            kotlin.jvm.internal.h.e(string, "sb.toString()");
            b.a aVarB = bVar.b(fVarT, string);
            Annotation[] declaredAnnotations = method.getDeclaredAnnotations();
            kotlin.jvm.internal.h.e(declaredAnnotations, "method.declaredAnnotations");
            for (Annotation annotation : declaredAnnotations) {
                kotlin.jvm.internal.h.e(annotation, "annotation");
                c.c(aVarB, annotation);
            }
            Annotation[][] parameterAnnotations = method.getParameterAnnotations();
            kotlin.jvm.internal.h.e(parameterAnnotations, "method.parameterAnnotations");
            Annotation[][] annotationArr = parameterAnnotations;
            int length2 = annotationArr.length;
            for (int r92 = 0; r92 < length2; r92++) {
                Annotation[] annotations = annotationArr[r92];
                kotlin.jvm.internal.h.e(annotations, "annotations");
                int length3 = annotations.length;
                int r12 = 0;
                while (r12 < length3) {
                    Annotation annotation2 = annotations[r12];
                    Class clsQ = d0.q(d0.p(annotation2));
                    Method[] methodArr = declaredMethods;
                    eb.i iVarC = aVarB.c(r92, sa.d.a(clsQ), new b(annotation2));
                    if (iVarC != null) {
                        c.d(iVarC, annotation2, clsQ);
                    }
                    r12++;
                    declaredMethods = methodArr;
                }
            }
            aVarB.a();
            r6++;
            declaredMethods = declaredMethods;
        }
        Constructor<?>[] declaredConstructors = klass.getDeclaredConstructors();
        kotlin.jvm.internal.h.e(declaredConstructors, "klass.declaredConstructors");
        int length4 = declaredConstructors.length;
        int r42 = 0;
        while (r42 < length4) {
            Constructor<?> constructor = declaredConstructors[r42];
            lb.f fVar = lb.h.f9683e;
            kotlin.jvm.internal.h.e(constructor, "constructor");
            StringBuilder sb3 = new StringBuilder("(");
            Class<?>[] parameterTypes2 = constructor.getParameterTypes();
            kotlin.jvm.internal.h.e(parameterTypes2, "constructor.parameterTypes");
            int length5 = parameterTypes2.length;
            int r15 = 0;
            while (true) {
                constructorArr = declaredConstructors;
                if (r15 >= length5) {
                    break;
                }
                Class<?> cls = parameterTypes2[r15];
                kotlin.jvm.internal.h.e(cls, str2);
                sb3.append(sa.d.b(cls));
                r15++;
                declaredConstructors = constructorArr;
            }
            sb3.append(")V");
            String string2 = sb3.toString();
            kotlin.jvm.internal.h.e(string2, str3);
            b.a aVarB2 = bVar.b(fVar, string2);
            Annotation[] declaredAnnotations2 = constructor.getDeclaredAnnotations();
            kotlin.jvm.internal.h.e(declaredAnnotations2, "constructor.declaredAnnotations");
            for (Annotation annotation3 : declaredAnnotations2) {
                kotlin.jvm.internal.h.e(annotation3, "annotation");
                c.c(aVarB2, annotation3);
            }
            Annotation[][] parameterAnnotations2 = constructor.getParameterAnnotations();
            kotlin.jvm.internal.h.e(parameterAnnotations2, "parameterAnnotations");
            if (!(parameterAnnotations2.length == 0)) {
                int length6 = constructor.getParameterTypes().length - parameterAnnotations2.length;
                int length7 = parameterAnnotations2.length;
                int r13 = 0;
                while (r13 < length7) {
                    Annotation[] annotationArr2 = parameterAnnotations2[r13];
                    kotlin.jvm.internal.h.e(annotationArr2, str);
                    int length8 = annotationArr2.length;
                    int r17 = length4;
                    int r32 = 0;
                    while (r32 < length8) {
                        Annotation[][] annotationArr3 = parameterAnnotations2;
                        Annotation annotation4 = annotationArr2[r32];
                        String str4 = str;
                        Class clsQ2 = d0.q(d0.p(annotation4));
                        String str5 = str2;
                        int r21 = length6;
                        String str6 = str3;
                        eb.i iVarC2 = aVarB2.c(r13 + length6, sa.d.a(clsQ2), new b(annotation4));
                        if (iVarC2 != null) {
                            c.d(iVarC2, annotation4, clsQ2);
                        }
                        r32++;
                        parameterAnnotations2 = annotationArr3;
                        str2 = str5;
                        str = str4;
                        length6 = r21;
                        str3 = str6;
                    }
                    r13++;
                    length4 = r17;
                }
            }
            aVarB2.a();
            r42++;
            declaredConstructors = constructorArr;
            length4 = length4;
            str2 = str2;
            str = str;
            str3 = str3;
        }
        Field[] declaredFields = klass.getDeclaredFields();
        kotlin.jvm.internal.h.e(declaredFields, "klass.declaredFields");
        for (Field field : declaredFields) {
            lb.f fVarT2 = lb.f.t(field.getName());
            Class<?> type = field.getType();
            kotlin.jvm.internal.h.e(type, "field.type");
            b.C0079b c0079bA = bVar.a(fVarT2, sa.d.b(type));
            Annotation[] declaredAnnotations3 = field.getDeclaredAnnotations();
            kotlin.jvm.internal.h.e(declaredAnnotations3, "field.declaredAnnotations");
            for (Annotation annotation5 : declaredAnnotations3) {
                kotlin.jvm.internal.h.e(annotation5, "annotation");
                c.c(c0079bA, annotation5);
            }
            c0079bA.a();
        }
    }

    @Override // eb.s
    public final String e() {
        return j.B(this.f14363a.getName(), '.', '/').concat(".class");
    }

    public final boolean equals(Object obj) {
        if (obj instanceof e) {
            if (kotlin.jvm.internal.h.a(this.f14363a, ((e) obj).f14363a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f14363a.hashCode();
    }

    public final String toString() {
        return e.class.getName() + ": " + this.f14363a;
    }
}
