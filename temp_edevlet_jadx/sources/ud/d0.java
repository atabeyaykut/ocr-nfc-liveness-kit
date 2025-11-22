package ud;

import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import rc.d;
import rc.r;
import ud.c;
import ud.f;

/* loaded from: classes2.dex */
public final class d0 {

    /* renamed from: b, reason: collision with root package name */
    public final d.a f17995b;

    /* renamed from: c, reason: collision with root package name */
    public final rc.r f17996c;

    /* renamed from: d, reason: collision with root package name */
    public final List<f.a> f17997d;

    /* renamed from: e, reason: collision with root package name */
    public final List<c.a> f17998e;

    /* renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f17994a = new ConcurrentHashMap();
    public final boolean f = false;

    public class a implements InvocationHandler {

        /* renamed from: a, reason: collision with root package name */
        public final z f17999a = z.f18112c;

        /* renamed from: b, reason: collision with root package name */
        public final Object[] f18000b = new Object[0];

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Class f18001c;

        public a(Class cls) {
            this.f18001c = cls;
        }

        @Override // java.lang.reflect.InvocationHandler
        public final Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            if (method.getDeclaringClass() == Object.class) {
                return method.invoke(this, objArr);
            }
            if (objArr == null) {
                objArr = this.f18000b;
            }
            z zVar = this.f17999a;
            return zVar.f18113a && method.isDefault() ? zVar.b(method, this.f18001c, obj, objArr) : d0.this.c(method).a(objArr);
        }
    }

    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        public final z f18003a;

        /* renamed from: b, reason: collision with root package name */
        public d.a f18004b;

        /* renamed from: c, reason: collision with root package name */
        public rc.r f18005c;

        /* renamed from: d, reason: collision with root package name */
        public final ArrayList f18006d;

        /* renamed from: e, reason: collision with root package name */
        public final ArrayList f18007e;

        public b() {
            z zVar = z.f18112c;
            this.f18006d = new ArrayList();
            this.f18007e = new ArrayList();
            this.f18003a = zVar;
        }

        public final void a(vd.g gVar) {
            this.f18007e.add(gVar);
        }

        public final void b(wd.a aVar) {
            this.f18006d.add(aVar);
        }

        public final void c(String str) {
            rc.r.f14515l.getClass();
            r.a aVar = new r.a();
            aVar.c(null, str);
            rc.r rVarA = aVar.a();
            if ("".equals(rVarA.f14521g.get(r0.size() - 1))) {
                this.f18005c = rVarA;
            } else {
                throw new IllegalArgumentException("baseUrl must end in /: " + rVarA);
            }
        }

        public final d0 d() {
            if (this.f18005c == null) {
                throw new IllegalStateException("Base URL required.");
            }
            d.a vVar = this.f18004b;
            if (vVar == null) {
                vVar = new rc.v();
            }
            z zVar = this.f18003a;
            Executor executorA = zVar.a();
            ArrayList arrayList = new ArrayList(this.f18007e);
            j jVar = new j(executorA);
            boolean z10 = zVar.f18113a;
            arrayList.addAll(z10 ? Arrays.asList(e.f18008a, jVar) : Collections.singletonList(jVar));
            ArrayList arrayList2 = this.f18006d;
            ArrayList arrayList3 = new ArrayList(arrayList2.size() + 1 + (z10 ? 1 : 0));
            arrayList3.add(new ud.a());
            arrayList3.addAll(arrayList2);
            arrayList3.addAll(z10 ? Collections.singletonList(v.f18069a) : Collections.emptyList());
            return new d0(vVar, this.f18005c, Collections.unmodifiableList(arrayList3), Collections.unmodifiableList(arrayList));
        }
    }

    public d0(d.a aVar, rc.r rVar, List list, List list2) {
        this.f17995b = aVar;
        this.f17996c = rVar;
        this.f17997d = list;
        this.f17998e = list2;
    }

    public final c<?, ?> a(Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "returnType == null");
        Objects.requireNonNull(annotationArr, "annotations == null");
        List<c.a> list = this.f17998e;
        int r02 = list.indexOf(null) + 1;
        int size = list.size();
        for (int r32 = r02; r32 < size; r32++) {
            c<?, ?> cVarA = list.get(r32).a(type, annotationArr);
            if (cVarA != null) {
                return cVarA;
            }
        }
        StringBuilder sb2 = new StringBuilder("Could not locate call adapter for ");
        sb2.append(type);
        sb2.append(".\n  Tried:");
        int size2 = list.size();
        while (r02 < size2) {
            sb2.append("\n   * ");
            sb2.append(list.get(r02).getClass().getName());
            r02++;
        }
        throw new IllegalArgumentException(sb2.toString());
    }

    public final <T> T b(Class<T> cls) throws SecurityException {
        if (!cls.isInterface()) {
            throw new IllegalArgumentException("API declarations must be interfaces.");
        }
        ArrayDeque arrayDeque = new ArrayDeque(1);
        arrayDeque.add(cls);
        while (!arrayDeque.isEmpty()) {
            Class<T> cls2 = (Class) arrayDeque.removeFirst();
            if (cls2.getTypeParameters().length != 0) {
                StringBuilder sb2 = new StringBuilder("Type parameters are unsupported on ");
                sb2.append(cls2.getName());
                if (cls2 != cls) {
                    sb2.append(" which is an interface of ");
                    sb2.append(cls.getName());
                }
                throw new IllegalArgumentException(sb2.toString());
            }
            Collections.addAll(arrayDeque, cls2.getInterfaces());
        }
        if (this.f) {
            z zVar = z.f18112c;
            for (Method method : cls.getDeclaredMethods()) {
                if (!(zVar.f18113a && method.isDefault()) && !Modifier.isStatic(method.getModifiers())) {
                    c(method);
                }
            }
        }
        return (T) Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new a(cls));
    }

    public final e0<?> c(Method method) {
        e0<?> e0VarB;
        e0<?> e0Var = (e0) this.f17994a.get(method);
        if (e0Var != null) {
            return e0Var;
        }
        synchronized (this.f17994a) {
            e0VarB = (e0) this.f17994a.get(method);
            if (e0VarB == null) {
                e0VarB = e0.b(this, method);
                this.f17994a.put(method, e0VarB);
            }
        }
        return e0VarB;
    }

    public final <T> f<T, rc.a0> d(Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        Objects.requireNonNull(type, "type == null");
        Objects.requireNonNull(annotationArr2, "methodAnnotations == null");
        List<f.a> list = this.f17997d;
        int r72 = list.indexOf(null) + 1;
        int size = list.size();
        for (int r22 = r72; r22 < size; r22++) {
            f<T, rc.a0> fVarA = list.get(r22).a(type, annotationArr);
            if (fVarA != null) {
                return fVarA;
            }
        }
        StringBuilder sb2 = new StringBuilder("Could not locate RequestBody converter for ");
        sb2.append(type);
        sb2.append(".\n  Tried:");
        int size2 = list.size();
        while (r72 < size2) {
            sb2.append("\n   * ");
            sb2.append(list.get(r72).getClass().getName());
            r72++;
        }
        throw new IllegalArgumentException(sb2.toString());
    }

    public final <T> f<rc.d0, T> e(Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "type == null");
        Objects.requireNonNull(annotationArr, "annotations == null");
        List<f.a> list = this.f17997d;
        int r12 = list.indexOf(null) + 1;
        int size = list.size();
        for (int r32 = r12; r32 < size; r32++) {
            f<rc.d0, T> fVar = (f<rc.d0, T>) list.get(r32).b(type, annotationArr, this);
            if (fVar != null) {
                return fVar;
            }
        }
        StringBuilder sb2 = new StringBuilder("Could not locate ResponseBody converter for ");
        sb2.append(type);
        sb2.append(".\n");
        sb2.append("  Tried:");
        int size2 = list.size();
        while (r12 < size2) {
            sb2.append("\n   * ");
            sb2.append(list.get(r12).getClass().getName());
            r12++;
        }
        throw new IllegalArgumentException(sb2.toString());
    }

    public final void f(Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "type == null");
        List<f.a> list = this.f17997d;
        int size = list.size();
        for (int r02 = 0; r02 < size; r02++) {
            list.get(r02).getClass();
        }
    }
}
