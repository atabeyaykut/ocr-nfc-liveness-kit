package t8;

import b8.f;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import t8.a;

/* loaded from: classes2.dex */
public final class c<T> implements t8.a<T> {

    /* renamed from: a, reason: collision with root package name */
    public final Map<String, k9.a<a.InterfaceC0253a<?>>> f15645a;

    public static final class a extends RuntimeException {
        public a(String str, ClassCastException classCastException) {
            super(str, classCastException);
        }
    }

    public c(Map<Class<?>, k9.a<a.InterfaceC0253a<?>>> map, Map<String, k9.a<a.InterfaceC0253a<?>>> map2) {
        if (!map.isEmpty()) {
            int size = map2.size() + map.size();
            LinkedHashMap linkedHashMap = new LinkedHashMap(size < 3 ? size + 1 : size < 1073741824 ? (int) ((size / 0.75f) + 1.0f) : Integer.MAX_VALUE);
            linkedHashMap.putAll(map2);
            for (Map.Entry<Class<?>, k9.a<a.InterfaceC0253a<?>>> entry : map.entrySet()) {
                linkedHashMap.put(entry.getKey().getName(), entry.getValue());
            }
            map2 = Collections.unmodifiableMap(linkedHashMap);
        }
        this.f15645a = map2;
    }

    @Override // t8.a
    public final void a(T t10) {
        boolean z10;
        String name = t10.getClass().getName();
        Map<String, k9.a<a.InterfaceC0253a<?>>> map = this.f15645a;
        k9.a<a.InterfaceC0253a<?>> aVar = map.get(name);
        if (aVar == null) {
            z10 = false;
        } else {
            a.InterfaceC0253a<?> interfaceC0253a = aVar.get();
            try {
                t8.a<?> aVarA = interfaceC0253a.a(t10);
                f.o(aVarA, "%s.create(I) should not return null.", interfaceC0253a.getClass());
                aVarA.a(t10);
                z10 = true;
            } catch (ClassCastException e10) {
                throw new a(String.format("%s does not implement AndroidInjector.Factory<%s>", interfaceC0253a.getClass().getCanonicalName(), t10.getClass().getCanonicalName()), e10);
            }
        }
        if (z10) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Class<?> superclass = t10.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
            if (map.containsKey(superclass.getCanonicalName())) {
                arrayList.add(superclass.getCanonicalName());
            }
        }
        throw new IllegalArgumentException(arrayList.isEmpty() ? String.format("No injector factory bound for Class<%s>", t10.getClass().getCanonicalName()) : String.format("No injector factory bound for Class<%1$s>. Injector factories were bound for supertypes of %1$s: %2$s. Did you mean to bind an injector factory for the subtype?", t10.getClass().getCanonicalName(), arrayList));
    }
}
