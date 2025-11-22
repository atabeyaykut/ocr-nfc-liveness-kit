package io.realm;

import android.content.Context;
import androidx.core.location.LocationRequestCompat;
import c5.b4;
import io.realm.exceptions.RealmException;
import io.realm.g0;
import io.realm.internal.Util;
import java.io.File;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class o0 {

    /* renamed from: r, reason: collision with root package name */
    public static final Object f7742r;

    /* renamed from: s, reason: collision with root package name */
    public static final io.realm.internal.o f7743s;

    /* renamed from: a, reason: collision with root package name */
    public final File f7744a;

    /* renamed from: b, reason: collision with root package name */
    public final String f7745b;

    /* renamed from: c, reason: collision with root package name */
    public final String f7746c;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f7749g;

    /* renamed from: h, reason: collision with root package name */
    public final int f7750h;

    /* renamed from: i, reason: collision with root package name */
    public final io.realm.internal.o f7751i;

    /* renamed from: j, reason: collision with root package name */
    public final j9.c f7752j;

    /* renamed from: n, reason: collision with root package name */
    public final long f7756n;

    /* renamed from: o, reason: collision with root package name */
    public final boolean f7757o;

    /* renamed from: p, reason: collision with root package name */
    public final boolean f7758p;

    /* renamed from: d, reason: collision with root package name */
    public final String f7747d = null;

    /* renamed from: e, reason: collision with root package name */
    public final byte[] f7748e = null;
    public final long f = 0;

    /* renamed from: k, reason: collision with root package name */
    public final g0.a f7753k = null;

    /* renamed from: l, reason: collision with root package name */
    public final boolean f7754l = false;

    /* renamed from: m, reason: collision with root package name */
    public final CompactOnLaunchCallback f7755m = null;

    /* renamed from: q, reason: collision with root package name */
    public final boolean f7759q = false;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public File f7760a;

        /* renamed from: b, reason: collision with root package name */
        public String f7761b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f7762c;

        /* renamed from: d, reason: collision with root package name */
        public int f7763d;

        /* renamed from: e, reason: collision with root package name */
        public final HashSet<Object> f7764e;
        public final HashSet<Class<? extends s0>> f;

        /* renamed from: g, reason: collision with root package name */
        public j9.b f7765g;

        /* renamed from: h, reason: collision with root package name */
        public b4 f7766h;

        /* renamed from: i, reason: collision with root package name */
        public final long f7767i;

        /* renamed from: j, reason: collision with root package name */
        public boolean f7768j;

        /* renamed from: k, reason: collision with root package name */
        public boolean f7769k;

        public a(Context context) {
            HashSet<Object> hashSet = new HashSet<>();
            this.f7764e = hashSet;
            this.f = new HashSet<>();
            this.f7767i = LocationRequestCompat.PASSIVE_INTERVAL;
            if (context == null) {
                throw new IllegalStateException("Call `Realm.init(Context)` before creating a RealmConfiguration");
            }
            io.realm.internal.m.a(context);
            this.f7760a = context.getFilesDir();
            this.f7761b = "default.realm";
            this.f7762c = false;
            this.f7763d = 1;
            Object obj = o0.f7742r;
            if (obj != null) {
                hashSet.add(obj);
            }
            this.f7768j = false;
            this.f7769k = true;
        }

        public final o0 a() throws SecurityException {
            io.realm.internal.o aVar;
            boolean zBooleanValue;
            if (this.f7765g == null) {
                synchronized (Util.class) {
                    if (Util.f7647a == null) {
                        try {
                            int r12 = y8.b.f19328a;
                            Util.f7647a = Boolean.TRUE;
                        } catch (ClassNotFoundException unused) {
                            Util.f7647a = Boolean.FALSE;
                        }
                    }
                    zBooleanValue = Util.f7647a.booleanValue();
                }
                if (zBooleanValue) {
                    this.f7765g = new j9.b();
                }
            }
            if (this.f7766h == null && Util.b()) {
                this.f7766h = new b4(Boolean.TRUE);
            }
            File file = new File(this.f7760a, this.f7761b);
            boolean z10 = this.f7762c;
            int r52 = this.f7763d;
            HashSet<Object> hashSet = this.f7764e;
            HashSet<Class<? extends s0>> hashSet2 = this.f;
            if (hashSet2.size() > 0) {
                aVar = new h9.b(o0.f7743s, hashSet2);
            } else if (hashSet.size() == 1) {
                aVar = o0.a(hashSet.iterator().next().getClass().getCanonicalName());
            } else {
                io.realm.internal.o[] oVarArr = new io.realm.internal.o[hashSet.size()];
                Iterator<Object> it = hashSet.iterator();
                int r72 = 0;
                while (it.hasNext()) {
                    oVarArr[r72] = o0.a(it.next().getClass().getCanonicalName());
                    r72++;
                }
                aVar = new h9.a(oVarArr);
            }
            return new o0(file, z10, r52, aVar, this.f7765g, this.f7767i, this.f7768j, this.f7769k);
        }
    }

    static {
        Object objNewInstance;
        Object obj = g0.f7537k;
        try {
            Constructor<?> constructor = DefaultRealmModule.class.getDeclaredConstructors()[0];
            constructor.setAccessible(true);
            objNewInstance = constructor.newInstance(new Object[0]);
        } catch (ClassNotFoundException unused) {
            objNewInstance = null;
        } catch (IllegalAccessException e10) {
            throw new RealmException("Could not create an instance of io.realm.DefaultRealmModule", e10);
        } catch (InstantiationException e11) {
            throw new RealmException("Could not create an instance of io.realm.DefaultRealmModule", e11);
        } catch (InvocationTargetException e12) {
            throw new RealmException("Could not create an instance of io.realm.DefaultRealmModule", e12);
        }
        f7742r = objNewInstance;
        if (objNewInstance == null) {
            f7743s = null;
            return;
        }
        io.realm.internal.o oVarA = a(objNewInstance.getClass().getCanonicalName());
        if (!oVarA.o()) {
            throw new ExceptionInInitializerError("RealmTransformer doesn't seem to be applied. Please update the project configuration to use the Realm Gradle plugin. See https://docs.mongodb.com/realm/sdk/android/install/#customize-dependecies-defined-by-the-realm-gradle-plugin");
        }
        f7743s = oVarA;
    }

    public o0(File file, boolean z10, int r52, io.realm.internal.o oVar, j9.c cVar, long j10, boolean z11, boolean z12) {
        this.f7744a = file.getParentFile();
        this.f7745b = file.getName();
        this.f7746c = file.getAbsolutePath();
        this.f7749g = z10;
        this.f7750h = r52;
        this.f7751i = oVar;
        this.f7752j = cVar;
        this.f7756n = j10;
        this.f7757o = z11;
        this.f7758p = z12;
    }

    public static io.realm.internal.o a(String str) throws SecurityException {
        String[] strArrSplit = str.split("\\.");
        String str2 = String.format(Locale.US, "io.realm.%s%s", strArrSplit[strArrSplit.length - 1], "Mediator");
        try {
            Constructor<?> constructor = Class.forName(str2).getDeclaredConstructors()[0];
            constructor.setAccessible(true);
            return (io.realm.internal.o) constructor.newInstance(new Object[0]);
        } catch (ClassNotFoundException e10) {
            throw new RealmException(androidx.browser.browseractions.b.e("Could not find ", str2), e10);
        } catch (IllegalAccessException e11) {
            throw new RealmException(androidx.browser.browseractions.b.e("Could not create an instance of ", str2), e11);
        } catch (InstantiationException e12) {
            throw new RealmException(androidx.browser.browseractions.b.e("Could not create an instance of ", str2), e12);
        } catch (InvocationTargetException e13) {
            throw new RealmException(androidx.browser.browseractions.b.e("Could not create an instance of ", str2), e13);
        }
    }

    public final j9.c b() {
        j9.c cVar = this.f7752j;
        if (cVar != null) {
            return cVar;
        }
        throw new UnsupportedOperationException("RxJava seems to be missing from the classpath. Remember to add it as an implementation dependency. See https://github.com/realm/realm-java/tree/master/examples/rxJavaExample for more details.");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || o0.class != obj.getClass()) {
            return false;
        }
        o0 o0Var = (o0) obj;
        if (this.f != o0Var.f || this.f7749g != o0Var.f7749g || this.f7754l != o0Var.f7754l || this.f7759q != o0Var.f7759q) {
            return false;
        }
        File file = o0Var.f7744a;
        File file2 = this.f7744a;
        if (file2 == null ? file != null : !file2.equals(file)) {
            return false;
        }
        String str = o0Var.f7745b;
        String str2 = this.f7745b;
        if (str2 == null ? str != null : !str2.equals(str)) {
            return false;
        }
        if (!this.f7746c.equals(o0Var.f7746c)) {
            return false;
        }
        String str3 = o0Var.f7747d;
        String str4 = this.f7747d;
        if (str4 == null ? str3 != null : !str4.equals(str3)) {
            return false;
        }
        if (!Arrays.equals(this.f7748e, o0Var.f7748e) || this.f7750h != o0Var.f7750h || !this.f7751i.equals(o0Var.f7751i)) {
            return false;
        }
        j9.c cVar = this.f7752j;
        j9.c cVar2 = o0Var.f7752j;
        if (cVar == null ? cVar2 != null : !(cVar2 instanceof j9.b)) {
            return false;
        }
        g0.a aVar = o0Var.f7753k;
        g0.a aVar2 = this.f7753k;
        if (aVar2 == null ? aVar != null : !aVar2.equals(aVar)) {
            return false;
        }
        CompactOnLaunchCallback compactOnLaunchCallback = o0Var.f7755m;
        CompactOnLaunchCallback compactOnLaunchCallback2 = this.f7755m;
        if (compactOnLaunchCallback2 == null ? compactOnLaunchCallback == null : compactOnLaunchCallback2.equals(compactOnLaunchCallback)) {
            return this.f7756n == o0Var.f7756n;
        }
        return false;
    }

    public final int hashCode() {
        File file = this.f7744a;
        int r12 = (file != null ? file.hashCode() : 0) * 31;
        String str = this.f7745b;
        int r13 = androidx.room.util.a.a(this.f7746c, (r12 + (str != null ? str.hashCode() : 0)) * 31, 31);
        String str2 = this.f7747d;
        int r22 = (Arrays.hashCode(this.f7748e) + ((r13 + (str2 != null ? str2.hashCode() : 0)) * 31)) * 31;
        long j10 = this.f;
        int r23 = (((this.f7751i.hashCode() + ((g.d.c(this.f7750h) + ((((((r22 + ((int) (j10 ^ (j10 >>> 32)))) * 31) + 0) * 31) + (this.f7749g ? 1 : 0)) * 31)) * 31)) * 31) + (this.f7752j != null ? 37 : 0)) * 31;
        g0.a aVar = this.f7753k;
        int r24 = (((r23 + (aVar != null ? aVar.hashCode() : 0)) * 31) + (this.f7754l ? 1 : 0)) * 31;
        CompactOnLaunchCallback compactOnLaunchCallback = this.f7755m;
        int r25 = (((r24 + (compactOnLaunchCallback != null ? compactOnLaunchCallback.hashCode() : 0)) * 31) + (this.f7759q ? 1 : 0)) * 31;
        long j11 = this.f7756n;
        return r25 + ((int) ((j11 >>> 32) ^ j11));
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("realmDirectory: ");
        File file = this.f7744a;
        sb2.append(file != null ? file.toString() : "");
        sb2.append("\nrealmFileName : ");
        sb2.append(this.f7745b);
        sb2.append("\ncanonicalPath: ");
        sb2.append(this.f7746c);
        sb2.append("\nkey: [length: ");
        sb2.append(this.f7748e == null ? 0 : 64);
        sb2.append("]\nschemaVersion: ");
        sb2.append(Long.toString(this.f));
        sb2.append("\nmigration: null\ndeleteRealmIfMigrationNeeded: ");
        sb2.append(this.f7749g);
        sb2.append("\ndurability: ");
        sb2.append(androidx.browser.browseractions.b.n(this.f7750h));
        sb2.append("\nschemaMediator: ");
        sb2.append(this.f7751i);
        sb2.append("\nreadOnly: ");
        sb2.append(this.f7754l);
        sb2.append("\ncompactOnLaunch: ");
        sb2.append(this.f7755m);
        sb2.append("\nmaxNumberOfActiveVersions: ");
        sb2.append(this.f7756n);
        return sb2.toString();
    }
}
