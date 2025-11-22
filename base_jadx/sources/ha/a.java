package ha;

import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import m9.n;

/* loaded from: classes2.dex */
public final class a implements f {

    /* renamed from: a, reason: collision with root package name */
    public final Class<?> f7030a;

    /* renamed from: b, reason: collision with root package name */
    public final List<String> f7031b;

    /* renamed from: c, reason: collision with root package name */
    public final int f7032c;

    /* renamed from: d, reason: collision with root package name */
    public final List<Method> f7033d;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f7034e;
    public final ArrayList f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f7035g;

    public /* synthetic */ a(Class cls, ArrayList arrayList, int r92) {
        ArrayList arrayList2 = new ArrayList(n.Q0(arrayList));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(cls.getDeclaredMethod((String) it.next(), new Class[0]));
        }
        this(cls, arrayList, r92, 2, arrayList2);
    }

    public a(Class jClass, ArrayList arrayList, int r52, int r6, List methods) {
        boolean z10;
        kotlin.jvm.internal.h.f(jClass, "jClass");
        androidx.camera.core.impl.utils.f.j(r52, "callMode");
        androidx.camera.core.impl.utils.f.j(r6, "origin");
        kotlin.jvm.internal.h.f(methods, "methods");
        this.f7030a = jClass;
        this.f7031b = arrayList;
        this.f7032c = r52;
        this.f7033d = methods;
        List list = methods;
        ArrayList arrayList2 = new ArrayList(n.Q0(list));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList2.add(((Method) it.next()).getGenericReturnType());
        }
        this.f7034e = arrayList2;
        List<Method> list2 = this.f7033d;
        ArrayList arrayList3 = new ArrayList(n.Q0(list2));
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            Class<?> it3 = ((Method) it2.next()).getReturnType();
            kotlin.jvm.internal.h.e(it3, "it");
            List<da.d<? extends Object>> list3 = sa.d.f15334a;
            Class<? extends Object> cls = sa.d.f15336c.get(it3);
            if (cls != null) {
                it3 = cls;
            }
            arrayList3.add(it3);
        }
        this.f = arrayList3;
        List<Method> list4 = this.f7033d;
        ArrayList arrayList4 = new ArrayList(n.Q0(list4));
        Iterator<T> it4 = list4.iterator();
        while (it4.hasNext()) {
            arrayList4.add(((Method) it4.next()).getDefaultValue());
        }
        this.f7035g = arrayList4;
        if (this.f7032c == 2 && r6 == 1) {
            List<String> list5 = this.f7031b;
            kotlin.jvm.internal.h.f(list5, "<this>");
            ArrayList arrayList5 = new ArrayList(n.Q0(list5));
            boolean z11 = false;
            for (Object obj : list5) {
                if (z11 || !kotlin.jvm.internal.h.a(obj, "value")) {
                    z10 = true;
                } else {
                    z11 = true;
                    z10 = false;
                }
                if (z10) {
                    arrayList5.add(obj);
                }
            }
            if (true ^ arrayList5.isEmpty()) {
                throw new UnsupportedOperationException("Positional call of a Java annotation constructor is allowed only if there are no parameters or one parameter named \"value\". This restriction exists because Java annotations (in contrast to Kotlin)do not impose any order on their arguments. Use KCallable#callBy instead.");
            }
        }
    }

    @Override // ha.f
    public final List<Type> a() {
        return this.f7034e;
    }

    @Override // ha.f
    public final /* bridge */ /* synthetic */ Member b() {
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00f8  */
    @Override // ha.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object call(java.lang.Object[] r15) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ha.a.call(java.lang.Object[]):java.lang.Object");
    }

    @Override // ha.f
    public final Type getReturnType() {
        return this.f7030a;
    }
}
