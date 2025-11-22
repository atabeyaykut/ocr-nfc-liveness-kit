package cc;

import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.reflect.jvm.internal.impl.util.TypeRegistry;

/* loaded from: classes2.dex */
public final class a1 extends ic.e<y0<?>, y0<?>> {

    /* renamed from: b, reason: collision with root package name */
    public static final a f2258b = new a();

    /* renamed from: c, reason: collision with root package name */
    public static final a1 f2259c = new a1(m9.v.f10173a);

    public static final class a extends TypeRegistry<y0<?>, y0<?>> {
        public static a1 c(List list) {
            return list.isEmpty() ? a1.f2259c : new a1(list);
        }

        @Override // kotlin.reflect.jvm.internal.impl.util.TypeRegistry
        public final int a(ConcurrentHashMap concurrentHashMap, da.d kClass, TypeRegistry.a aVar) {
            int r32;
            kotlin.jvm.internal.h.f(concurrentHashMap, "<this>");
            kotlin.jvm.internal.h.f(kClass, "kClass");
            Integer num = (Integer) concurrentHashMap.get(kClass);
            if (num != null) {
                return num.intValue();
            }
            synchronized (concurrentHashMap) {
                Integer num2 = (Integer) concurrentHashMap.get(kClass);
                if (num2 == null) {
                    Object objInvoke = aVar.invoke(kClass);
                    concurrentHashMap.putIfAbsent(kClass, Integer.valueOf(((Number) objInvoke).intValue()));
                    num2 = (Integer) objInvoke;
                }
                kotlin.jvm.internal.h.e(num2, "this[kClass] ?: compute(…putIfAbsent(kClass, it) }");
                r32 = num2.intValue();
            }
            return r32;
        }
    }

    public a1() {
        throw null;
    }

    public a1(List<? extends y0<?>> list) {
        ic.r rVar;
        for (y0<?> y0Var : list) {
            da.e tClass = y0Var.b();
            kotlin.jvm.internal.h.f(tClass, "tClass");
            int r12 = f2258b.b(tClass);
            int r22 = this.f7362a.l();
            if (r22 != 0) {
                if (r22 == 1) {
                    y9.a aVar = this.f7362a;
                    kotlin.jvm.internal.h.d(aVar, "null cannot be cast to non-null type org.jetbrains.kotlin.util.OneElementArrayMap<T of org.jetbrains.kotlin.util.AttributeArrayOwner>");
                    ic.r rVar2 = (ic.r) aVar;
                    if (rVar2.f7382b == r12) {
                        rVar = new ic.r(r12, y0Var);
                    } else {
                        ic.d dVar = new ic.d();
                        this.f7362a = dVar;
                        dVar.m(rVar2.f7382b, rVar2.f7381a);
                    }
                }
                this.f7362a.m(r12, y0Var);
            } else {
                rVar = new ic.r(r12, y0Var);
            }
            this.f7362a = rVar;
        }
    }
}
