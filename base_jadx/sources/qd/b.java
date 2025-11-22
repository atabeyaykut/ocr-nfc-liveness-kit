package qd;

import android.os.Looper;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.logging.Level;
import org.greenrobot.eventbus.ThreadMode;
import qd.e;
import v7.p;

/* loaded from: classes2.dex */
public final class b {

    /* renamed from: q, reason: collision with root package name */
    public static volatile b f13544q;

    /* renamed from: r, reason: collision with root package name */
    public static final qd.c f13545r = new qd.c();

    /* renamed from: s, reason: collision with root package name */
    public static final HashMap f13546s = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f13547a;

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f13548b;

    /* renamed from: c, reason: collision with root package name */
    public final ConcurrentHashMap f13549c;

    /* renamed from: d, reason: collision with root package name */
    public final a f13550d = new a();

    /* renamed from: e, reason: collision with root package name */
    public final b0.a f13551e;
    public final d f;

    /* renamed from: g, reason: collision with root package name */
    public final qd.a f13552g;

    /* renamed from: h, reason: collision with root package name */
    public final p f13553h;

    /* renamed from: i, reason: collision with root package name */
    public final l f13554i;

    /* renamed from: j, reason: collision with root package name */
    public final ExecutorService f13555j;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f13556k;

    /* renamed from: l, reason: collision with root package name */
    public final boolean f13557l;

    /* renamed from: m, reason: collision with root package name */
    public final boolean f13558m;

    /* renamed from: n, reason: collision with root package name */
    public final boolean f13559n;

    /* renamed from: o, reason: collision with root package name */
    public final boolean f13560o;

    /* renamed from: p, reason: collision with root package name */
    public final e f13561p;

    public class a extends ThreadLocal<c> {
        @Override // java.lang.ThreadLocal
        public final c initialValue() {
            return new c();
        }
    }

    /* renamed from: qd.b$b, reason: collision with other inner class name */
    public static /* synthetic */ class C0228b {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f13562a;

        static {
            int[] r02 = new int[ThreadMode.values().length];
            f13562a = r02;
            try {
                r02[ThreadMode.POSTING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13562a[ThreadMode.MAIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f13562a[ThreadMode.MAIN_ORDERED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f13562a[ThreadMode.BACKGROUND.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f13562a[ThreadMode.ASYNC.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static final class c {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayList f13563a = new ArrayList();

        /* renamed from: b, reason: collision with root package name */
        public boolean f13564b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f13565c;

        /* renamed from: d, reason: collision with root package name */
        public Object f13566d;
    }

    public b() {
        qd.c cVar = f13545r;
        cVar.getClass();
        rd.a aVar = rd.a.f14613c;
        this.f13561p = aVar != null ? aVar.f14614a : new e.a();
        this.f13547a = new HashMap();
        this.f13548b = new HashMap();
        this.f13549c = new ConcurrentHashMap();
        b0.a aVar2 = aVar != null ? aVar.f14615b : null;
        this.f13551e = aVar2;
        this.f = aVar2 != null ? new d(this, Looper.getMainLooper()) : null;
        this.f13552g = new qd.a(this);
        this.f13553h = new p(this);
        this.f13554i = new l();
        this.f13556k = true;
        this.f13557l = true;
        this.f13558m = true;
        this.f13559n = true;
        this.f13560o = true;
        this.f13555j = cVar.f13568a;
    }

    public static void a(ArrayList arrayList, Class[] clsArr) {
        for (Class cls : clsArr) {
            if (!arrayList.contains(cls)) {
                arrayList.add(cls);
                a(arrayList, cls.getInterfaces());
            }
        }
    }

    public static b b() {
        b bVar = f13544q;
        if (bVar == null) {
            synchronized (b.class) {
                bVar = f13544q;
                if (bVar == null) {
                    bVar = new b();
                    f13544q = bVar;
                }
            }
        }
        return bVar;
    }

    public final void c(Object obj, m mVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            mVar.f13597b.f13584a.invoke(mVar.f13596a, obj);
        } catch (IllegalAccessException e10) {
            throw new IllegalStateException("Unexpected exception", e10);
        } catch (InvocationTargetException e11) {
            Throwable cause = e11.getCause();
            boolean z10 = obj instanceof j;
            boolean z11 = this.f13556k;
            e eVar = this.f13561p;
            if (!z10) {
                if (z11) {
                    eVar.b(Level.SEVERE, "Could not dispatch event: " + obj.getClass() + " to subscribing class " + mVar.f13596a.getClass(), cause);
                }
                if (this.f13558m) {
                    f(new j(cause, obj, mVar.f13596a));
                    return;
                }
                return;
            }
            if (z11) {
                Level level = Level.SEVERE;
                eVar.b(level, "SubscriberExceptionEvent subscriber " + mVar.f13596a.getClass() + " threw an exception", cause);
                j jVar = (j) obj;
                eVar.b(level, "Initial event " + jVar.f13582b + " caused exception in " + jVar.f13583c, jVar.f13581a);
            }
        }
    }

    public final void d(g gVar) {
        Object obj = gVar.f13576a;
        m mVar = gVar.f13577b;
        gVar.f13576a = null;
        gVar.f13577b = null;
        gVar.f13578c = null;
        ArrayList arrayList = g.f13575d;
        synchronized (arrayList) {
            if (arrayList.size() < 10000) {
                arrayList.add(gVar);
            }
        }
        if (mVar.f13598c) {
            c(obj, mVar);
        }
    }

    public final synchronized boolean e(Object obj) {
        return this.f13548b.containsKey(obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f(java.lang.Object r6) {
        /*
            r5 = this;
            qd.b$a r0 = r5.f13550d
            java.lang.Object r0 = r0.get()
            qd.b$c r0 = (qd.b.c) r0
            java.util.ArrayList r1 = r0.f13563a
            r1.add(r6)
            boolean r6 = r0.f13564b
            if (r6 != 0) goto L47
            b0.a r6 = r5.f13551e
            r2 = 0
            r3 = 1
            if (r6 == 0) goto L29
            android.os.Looper r6 = android.os.Looper.getMainLooper()
            android.os.Looper r4 = android.os.Looper.myLooper()
            if (r6 != r4) goto L23
            r6 = 1
            goto L24
        L23:
            r6 = 0
        L24:
            if (r6 == 0) goto L27
            goto L29
        L27:
            r6 = 0
            goto L2a
        L29:
            r6 = 1
        L2a:
            r0.f13565c = r6
            r0.f13564b = r3
        L2e:
            boolean r6 = r1.isEmpty()     // Catch: java.lang.Throwable -> L41
            if (r6 != 0) goto L3c
            java.lang.Object r6 = r1.remove(r2)     // Catch: java.lang.Throwable -> L41
            r5.g(r6, r0)     // Catch: java.lang.Throwable -> L41
            goto L2e
        L3c:
            r0.f13564b = r2
            r0.f13565c = r2
            goto L47
        L41:
            r6 = move-exception
            r0.f13564b = r2
            r0.f13565c = r2
            throw r6
        L47:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: qd.b.f(java.lang.Object):void");
    }

    public final void g(Object obj, c cVar) throws Error {
        boolean zH;
        List list;
        Class<?> cls = obj.getClass();
        if (this.f13560o) {
            HashMap map = f13546s;
            synchronized (map) {
                try {
                    List list2 = (List) map.get(cls);
                    list = list2;
                    if (list2 == null) {
                        ArrayList arrayList = new ArrayList();
                        for (Class<?> superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
                            arrayList.add(superclass);
                            a(arrayList, superclass.getInterfaces());
                        }
                        f13546s.put(cls, arrayList);
                        list = arrayList;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            int size = list.size();
            zH = false;
            for (int r32 = 0; r32 < size; r32++) {
                zH |= h(obj, cVar, (Class) list.get(r32));
            }
        } else {
            zH = h(obj, cVar, cls);
        }
        if (zH) {
            return;
        }
        if (this.f13557l) {
            this.f13561p.a(Level.FINE, "No subscribers registered for event " + cls);
        }
        if (!this.f13559n || cls == f.class || cls == j.class) {
            return;
        }
        f(new f(this, obj));
    }

    public final boolean h(Object obj, c cVar, Class<?> cls) {
        CopyOnWriteArrayList copyOnWriteArrayList;
        synchronized (this) {
            copyOnWriteArrayList = (CopyOnWriteArrayList) this.f13547a.get(cls);
        }
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            m mVar = (m) it.next();
            cVar.f13566d = obj;
            j(mVar, obj, cVar.f13565c);
        }
        return true;
    }

    public final void i(Object obj) {
        synchronized (this.f13549c) {
            this.f13549c.put(obj.getClass(), obj);
        }
        f(obj);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0072, code lost:
    
        if (r2 != null) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0075, code lost:
    
        if (r7 != false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0078, code lost:
    
        r2.a(r6, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void j(qd.m r5, java.lang.Object r6, boolean r7) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            r4 = this;
            int[] r0 = qd.b.C0228b.f13562a
            qd.k r1 = r5.f13597b
            org.greenrobot.eventbus.ThreadMode r1 = r1.f13585b
            int r1 = r1.ordinal()
            r0 = r0[r1]
            r1 = 1
            if (r0 == r1) goto L7c
            qd.d r2 = r4.f
            r3 = 2
            if (r0 == r3) goto L75
            r3 = 3
            if (r0 == r3) goto L72
            r2 = 4
            if (r0 == r2) goto L4f
            r7 = 5
            if (r0 != r7) goto L37
            v7.p r7 = r4.f13553h
            r7.getClass()
            qd.g r5 = qd.g.a(r6, r5)
            java.lang.Object r6 = r7.f18284b
            qd.h r6 = (qd.h) r6
            r6.a(r5)
            java.lang.Object r5 = r7.f18285c
            qd.b r5 = (qd.b) r5
            java.util.concurrent.ExecutorService r5 = r5.f13555j
            r5.execute(r7)
            goto L7f
        L37:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            java.lang.String r0 = "Unknown thread mode: "
            r7.<init>(r0)
            qd.k r5 = r5.f13597b
            org.greenrobot.eventbus.ThreadMode r5 = r5.f13585b
            r7.append(r5)
            java.lang.String r5 = r7.toString()
            r6.<init>(r5)
            throw r6
        L4f:
            if (r7 == 0) goto L7c
            qd.a r7 = r4.f13552g
            r7.getClass()
            qd.g r5 = qd.g.a(r6, r5)
            monitor-enter(r7)
            qd.h r6 = r7.f13541a     // Catch: java.lang.Throwable -> L6f
            r6.a(r5)     // Catch: java.lang.Throwable -> L6f
            boolean r5 = r7.f13543c     // Catch: java.lang.Throwable -> L6f
            if (r5 != 0) goto L6d
            r7.f13543c = r1     // Catch: java.lang.Throwable -> L6f
            qd.b r5 = r7.f13542b     // Catch: java.lang.Throwable -> L6f
            java.util.concurrent.ExecutorService r5 = r5.f13555j     // Catch: java.lang.Throwable -> L6f
            r5.execute(r7)     // Catch: java.lang.Throwable -> L6f
        L6d:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L6f
            goto L7f
        L6f:
            r5 = move-exception
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L6f
            throw r5
        L72:
            if (r2 == 0) goto L7c
            goto L78
        L75:
            if (r7 == 0) goto L78
            goto L7c
        L78:
            r2.a(r6, r5)
            goto L7f
        L7c:
            r4.c(r6, r5)
        L7f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: qd.b.j(qd.m, java.lang.Object, boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x00fc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void k(java.lang.Object r17) throws java.lang.SecurityException {
        /*
            Method dump skipped, instructions count: 339
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: qd.b.k(java.lang.Object):void");
    }

    public final void l(Class cls) {
        synchronized (this.f13549c) {
            cls.cast(this.f13549c.remove(cls));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00b7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m(java.lang.Object r9, qd.k r10) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            r8 = this;
            java.lang.Class<?> r0 = r10.f13586c
            qd.m r1 = new qd.m
            r1.<init>(r9, r10)
            java.util.HashMap r2 = r8.f13547a
            java.lang.Object r3 = r2.get(r0)
            java.util.concurrent.CopyOnWriteArrayList r3 = (java.util.concurrent.CopyOnWriteArrayList) r3
            if (r3 != 0) goto L1a
            java.util.concurrent.CopyOnWriteArrayList r3 = new java.util.concurrent.CopyOnWriteArrayList
            r3.<init>()
            r2.put(r0, r3)
            goto L20
        L1a:
            boolean r2 = r3.contains(r1)
            if (r2 != 0) goto Lbc
        L20:
            int r2 = r3.size()
            r4 = 0
            r5 = 0
        L26:
            if (r5 > r2) goto L3f
            if (r5 == r2) goto L3c
            java.lang.Object r6 = r3.get(r5)
            qd.m r6 = (qd.m) r6
            qd.k r6 = r6.f13597b
            int r6 = r6.f13587d
            int r7 = r10.f13587d
            if (r7 <= r6) goto L39
            goto L3c
        L39:
            int r5 = r5 + 1
            goto L26
        L3c:
            r3.add(r5, r1)
        L3f:
            java.util.HashMap r2 = r8.f13548b
            java.lang.Object r3 = r2.get(r9)
            java.util.List r3 = (java.util.List) r3
            if (r3 != 0) goto L51
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
            r2.put(r9, r3)
        L51:
            r3.add(r0)
            boolean r9 = r10.f13588e
            if (r9 == 0) goto Lbb
            java.util.concurrent.ConcurrentHashMap r9 = r8.f13549c
            b0.a r10 = r8.f13551e
            r2 = 1
            boolean r3 = r8.f13560o
            if (r3 == 0) goto La0
            java.util.Set r9 = r9.entrySet()
            java.util.Iterator r9 = r9.iterator()
        L69:
            boolean r3 = r9.hasNext()
            if (r3 == 0) goto Lbb
            java.lang.Object r3 = r9.next()
            java.util.Map$Entry r3 = (java.util.Map.Entry) r3
            java.lang.Object r5 = r3.getKey()
            java.lang.Class r5 = (java.lang.Class) r5
            boolean r5 = r0.isAssignableFrom(r5)
            if (r5 == 0) goto L69
            java.lang.Object r3 = r3.getValue()
            if (r3 == 0) goto L69
            if (r10 == 0) goto L9b
            android.os.Looper r5 = android.os.Looper.getMainLooper()
            android.os.Looper r6 = android.os.Looper.myLooper()
            if (r5 != r6) goto L95
            r5 = 1
            goto L96
        L95:
            r5 = 0
        L96:
            if (r5 == 0) goto L99
            goto L9b
        L99:
            r5 = 0
            goto L9c
        L9b:
            r5 = 1
        L9c:
            r8.j(r1, r3, r5)
            goto L69
        La0:
            java.lang.Object r9 = r9.get(r0)
            if (r9 == 0) goto Lbb
            if (r10 == 0) goto Lb7
            android.os.Looper r10 = android.os.Looper.getMainLooper()
            android.os.Looper r0 = android.os.Looper.myLooper()
            if (r10 != r0) goto Lb4
            r10 = 1
            goto Lb5
        Lb4:
            r10 = 0
        Lb5:
            if (r10 == 0) goto Lb8
        Lb7:
            r4 = 1
        Lb8:
            r8.j(r1, r9, r4)
        Lbb:
            return
        Lbc:
            com.airbnb.epoxy.d0 r10 = new com.airbnb.epoxy.d0
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Subscriber "
            r1.<init>(r2)
            java.lang.Class r9 = r9.getClass()
            r1.append(r9)
            java.lang.String r9 = " already registered to event "
            r1.append(r9)
            r1.append(r0)
            java.lang.String r9 = r1.toString()
            r10.<init>(r9)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: qd.b.m(java.lang.Object, qd.k):void");
    }

    public final synchronized void n(Object obj) {
        List list = (List) this.f13548b.get(obj);
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                List list2 = (List) this.f13547a.get((Class) it.next());
                if (list2 != null) {
                    int size = list2.size();
                    int r42 = 0;
                    while (r42 < size) {
                        m mVar = (m) list2.get(r42);
                        if (mVar.f13596a == obj) {
                            mVar.f13598c = false;
                            list2.remove(r42);
                            r42--;
                            size--;
                        }
                        r42++;
                    }
                }
            }
            this.f13548b.remove(obj);
        } else {
            this.f13561p.a(Level.WARNING, "Subscriber to unregister was not registered before: " + obj.getClass());
        }
    }

    public final String toString() {
        return "EventBus[indexCount=0, eventInheritance=" + this.f13560o + "]";
    }
}
