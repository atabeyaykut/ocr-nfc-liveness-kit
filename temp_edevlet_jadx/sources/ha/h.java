package ha;

import ga.z0;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes2.dex */
public final class h<M extends Member> implements f<M> {

    /* renamed from: a, reason: collision with root package name */
    public final f<M> f7054a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f7055b;

    /* renamed from: c, reason: collision with root package name */
    public final a f7056c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final ca.d f7057a;

        /* renamed from: b, reason: collision with root package name */
        public final Method[] f7058b;

        /* renamed from: c, reason: collision with root package name */
        public final Method f7059c;

        public a(ca.d argumentRange, Method[] methodArr, Method method) {
            kotlin.jvm.internal.h.f(argumentRange, "argumentRange");
            this.f7057a = argumentRange;
            this.f7058b = methodArr;
            this.f7059c = method;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00df A[PHI: r5
      0x00df: PHI (r5v5 cc.e0) = (r5v4 cc.e0), (r5v20 cc.e0) binds: [B:33:0x00a4, B:45:0x00d9] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00f7 A[LOOP:0: B:48:0x00f1->B:50:0x00f7, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x016b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public h(ha.f r11, ma.u r12, boolean r13) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        /*
            Method dump skipped, instructions count: 425
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ha.h.<init>(ha.f, ma.u, boolean):void");
    }

    @Override // ha.f
    public final List<Type> a() {
        return this.f7054a.a();
    }

    @Override // ha.f
    public final M b() {
        return (M) this.f7054a.b();
    }

    @Override // ha.f
    public final Object call(Object[] args) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object objInvoke;
        kotlin.jvm.internal.h.f(args, "args");
        a aVar = this.f7056c;
        ca.d dVar = aVar.f7057a;
        Object[] objArrCopyOf = Arrays.copyOf(args, args.length);
        kotlin.jvm.internal.h.e(objArrCopyOf, "copyOf(this, size)");
        int r32 = dVar.f2246a;
        int r12 = dVar.f2247b;
        if (r32 <= r12) {
            while (true) {
                Method method = aVar.f7058b[r32];
                Object objE = args[r32];
                if (method != null) {
                    if (objE != null) {
                        objE = method.invoke(objE, new Object[0]);
                    } else {
                        Class<?> returnType = method.getReturnType();
                        kotlin.jvm.internal.h.e(returnType, "method.returnType");
                        objE = z0.e(returnType);
                    }
                }
                objArrCopyOf[r32] = objE;
                if (r32 == r12) {
                    break;
                }
                r32++;
            }
        }
        Object objCall = this.f7054a.call(objArrCopyOf);
        Method method2 = aVar.f7059c;
        return (method2 == null || (objInvoke = method2.invoke(null, objCall)) == null) ? objCall : objInvoke;
    }

    @Override // ha.f
    public final Type getReturnType() {
        return this.f7054a.getReturnType();
    }
}
