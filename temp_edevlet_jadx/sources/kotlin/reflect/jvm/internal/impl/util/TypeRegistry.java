package kotlin.reflect.jvm.internal.impl.util;

import da.d;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import x9.l;

/* loaded from: classes2.dex */
public abstract class TypeRegistry<K, V> {

    /* renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap<d<? extends K>, Integer> f9006a = new ConcurrentHashMap<>();

    /* renamed from: b, reason: collision with root package name */
    public final AtomicInteger f9007b = new AtomicInteger(0);

    public static final class a extends j implements l<d<? extends K>, Integer> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ TypeRegistry<K, V> f9008a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(TypeRegistry<K, V> typeRegistry) {
            super(1);
            this.f9008a = typeRegistry;
        }

        @Override // x9.l
        public final Integer invoke(Object obj) {
            d it = (d) obj;
            h.f(it, "it");
            return Integer.valueOf(this.f9008a.f9007b.getAndIncrement());
        }
    }

    public abstract int a(ConcurrentHashMap concurrentHashMap, d dVar, a aVar);

    public final <T extends K> int b(d<T> kClass) {
        h.f(kClass, "kClass");
        return a(this.f9006a, kClass, new a(this));
    }
}
