package b7;

import android.net.TrafficStats;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.browser.trusted.sharing.ShareTarget;
import androidx.camera.core.impl.t;
import c5.v;
import d7.a;
import e7.b;
import h5.n;
import h5.z;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;
import r3.r;

/* loaded from: classes2.dex */
public final class c implements d {

    /* renamed from: m, reason: collision with root package name */
    public static final Object f1149m = new Object();

    /* renamed from: n, reason: collision with root package name */
    public static final a f1150n = new a();

    /* renamed from: a, reason: collision with root package name */
    public final x5.c f1151a;

    /* renamed from: b, reason: collision with root package name */
    public final e7.c f1152b;

    /* renamed from: c, reason: collision with root package name */
    public final d7.c f1153c;

    /* renamed from: d, reason: collision with root package name */
    public final l f1154d;

    /* renamed from: e, reason: collision with root package name */
    public final d7.b f1155e;
    public final j f;

    /* renamed from: g, reason: collision with root package name */
    public final Object f1156g;

    /* renamed from: h, reason: collision with root package name */
    public final ExecutorService f1157h;

    /* renamed from: i, reason: collision with root package name */
    public final ThreadPoolExecutor f1158i;

    /* renamed from: j, reason: collision with root package name */
    @GuardedBy("this")
    public String f1159j;

    /* renamed from: k, reason: collision with root package name */
    @GuardedBy("FirebaseInstallations.this")
    public final HashSet f1160k;

    /* renamed from: l, reason: collision with root package name */
    @GuardedBy("lock")
    public final ArrayList f1161l;

    public class a implements ThreadFactory {

        /* renamed from: a, reason: collision with root package name */
        public final AtomicInteger f1162a = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return new Thread(runnable, String.format("firebase-installations-executor-%d", Integer.valueOf(this.f1162a.getAndIncrement())));
        }
    }

    public c(x5.c cVar, @NonNull a7.b<i7.g> bVar, @NonNull a7.b<y6.e> bVar2) {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        a aVar = f1150n;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 30L, timeUnit, linkedBlockingQueue, aVar);
        cVar.a();
        e7.c cVar2 = new e7.c(cVar.f19165a, bVar, bVar2);
        d7.c cVar3 = new d7.c(cVar);
        if (v.f2053g == null) {
            v.f2053g = new v();
        }
        v vVar = v.f2053g;
        if (l.f1171d == null) {
            l.f1171d = new l(vVar);
        }
        l lVar = l.f1171d;
        d7.b bVar3 = new d7.b(cVar);
        j jVar = new j();
        this.f1156g = new Object();
        this.f1160k = new HashSet();
        this.f1161l = new ArrayList();
        this.f1151a = cVar;
        this.f1152b = cVar2;
        this.f1153c = cVar3;
        this.f1154d = lVar;
        this.f1155e = bVar3;
        this.f = jVar;
        this.f1157h = threadPoolExecutor;
        this.f1158i = new ThreadPoolExecutor(0, 1, 30L, timeUnit, new LinkedBlockingQueue(), aVar);
    }

    @Override // b7.d
    @NonNull
    public final z a() {
        f();
        h5.l lVar = new h5.l();
        b(new g(this.f1154d, lVar));
        this.f1157h.execute(new Runnable() { // from class: b7.b

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ boolean f1148b = false;

            @Override // java.lang.Runnable
            public final void run() {
                this.f1147a.c(this.f1148b);
            }
        });
        return lVar.f6841a;
    }

    public final void b(k kVar) {
        synchronized (this.f1156g) {
            this.f1161l.add(kVar);
        }
    }

    public final void c(boolean z10) {
        d7.a aVarB;
        int r42;
        synchronized (f1149m) {
            x5.c cVar = this.f1151a;
            cVar.a();
            qd.f fVarC = qd.f.c(cVar.f19165a);
            try {
                aVarB = this.f1153c.b();
                int r32 = aVarB.f4675c;
                r42 = 1;
                if (r32 == 2 || r32 == 1) {
                    String strG = g(aVarB);
                    d7.c cVar2 = this.f1153c;
                    a.C0069a c0069a = new a.C0069a(aVarB);
                    c0069a.f4680a = strG;
                    c0069a.b(3);
                    aVarB = c0069a.a();
                    cVar2.a(aVarB);
                }
            } finally {
                if (fVarC != null) {
                    fVarC.d();
                }
            }
        }
        if (z10) {
            a.C0069a c0069a2 = new a.C0069a(aVarB);
            c0069a2.f4682c = null;
            aVarB = c0069a2.a();
        }
        j(aVarB);
        this.f1158i.execute(new androidx.camera.camera2.interop.b(this, r42, z10));
    }

    public final d7.a d(@NonNull d7.a aVar) throws e {
        int responseCode;
        e7.b bVarF;
        b.a aVar2;
        x5.c cVar = this.f1151a;
        cVar.a();
        String str = cVar.f19167c.f19176a;
        cVar.a();
        String str2 = cVar.f19167c.f19181g;
        String str3 = aVar.f4677e;
        e7.c cVar2 = this.f1152b;
        e7.e eVar = cVar2.f5134d;
        if (!eVar.b()) {
            throw new e("Firebase Installations Service is unavailable. Please try again later.");
        }
        URL urlA = e7.c.a(String.format("projects/%s/installations/%s/authTokens:generate", str2, aVar.f4674b));
        for (int r12 = 0; r12 <= 1; r12++) {
            TrafficStats.setThreadStatsTag(32771);
            HttpURLConnection httpURLConnectionC = cVar2.c(urlA, str);
            try {
                httpURLConnectionC.setRequestMethod(ShareTarget.METHOD_POST);
                httpURLConnectionC.addRequestProperty("Authorization", "FIS_v2 " + str3);
                httpURLConnectionC.setDoOutput(true);
                e7.c.h(httpURLConnectionC);
                responseCode = httpURLConnectionC.getResponseCode();
                eVar.d(responseCode);
            } catch (IOException | AssertionError unused) {
            } catch (Throwable th2) {
                httpURLConnectionC.disconnect();
                TrafficStats.clearThreadStatsTag();
                throw th2;
            }
            if (responseCode >= 200 && responseCode < 300) {
                bVarF = e7.c.f(httpURLConnectionC);
            } else {
                e7.c.b(httpURLConnectionC, null, str, str2);
                if (responseCode == 401 || responseCode == 404) {
                    aVar2 = new b.a();
                    aVar2.f5128a = 0L;
                    aVar2.f5129b = 3;
                } else {
                    if (responseCode == 429) {
                        throw new e("Firebase servers have received too many requests from this client in a short period of time. Please try again later.");
                    }
                    if (responseCode < 500 || responseCode >= 600) {
                        Log.e("Firebase-Installations", "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase.");
                        aVar2 = new b.a();
                        aVar2.f5128a = 0L;
                        aVar2.f5129b = 2;
                    } else {
                        httpURLConnectionC.disconnect();
                        TrafficStats.clearThreadStatsTag();
                    }
                }
                bVarF = aVar2.a();
            }
            httpURLConnectionC.disconnect();
            TrafficStats.clearThreadStatsTag();
            int r32 = g.d.c(bVarF.f5127c);
            if (r32 == 0) {
                l lVar = this.f1154d;
                lVar.getClass();
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                lVar.f1172a.getClass();
                long seconds = timeUnit.toSeconds(System.currentTimeMillis());
                a.C0069a c0069a = new a.C0069a(aVar);
                c0069a.f4682c = bVarF.f5125a;
                c0069a.f4684e = Long.valueOf(bVarF.f5126b);
                c0069a.f = Long.valueOf(seconds);
                return c0069a.a();
            }
            if (r32 == 1) {
                a.C0069a c0069aH = aVar.h();
                c0069aH.f4685g = "BAD CONFIG";
                c0069aH.b(5);
                return c0069aH.a();
            }
            if (r32 != 2) {
                throw new e("Firebase Installations Service is unavailable. Please try again later.");
            }
            k(null);
            a.C0069a c0069a2 = new a.C0069a(aVar);
            c0069a2.b(2);
            return c0069a2.a();
        }
        throw new e("Firebase Installations Service is unavailable. Please try again later.");
    }

    public final void e(d7.a aVar) {
        synchronized (f1149m) {
            x5.c cVar = this.f1151a;
            cVar.a();
            qd.f fVarC = qd.f.c(cVar.f19165a);
            try {
                this.f1153c.a(aVar);
            } finally {
                if (fVarC != null) {
                    fVarC.d();
                }
            }
        }
    }

    public final void f() {
        x5.c cVar = this.f1151a;
        cVar.a();
        r.g("Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.", cVar.f19167c.f19177b);
        cVar.a();
        r.g("Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.", cVar.f19167c.f19181g);
        cVar.a();
        r.g("Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.", cVar.f19167c.f19176a);
        cVar.a();
        String str = cVar.f19167c.f19177b;
        Pattern pattern = l.f1170c;
        r.b(str.contains(":"), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        cVar.a();
        r.b(l.f1170c.matcher(cVar.f19167c.f19176a).matches(), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String g(d7.a r3) {
        /*
            r2 = this;
            x5.c r0 = r2.f1151a
            r0.a()
            java.lang.String r0 = r0.f19166b
            java.lang.String r1 = "CHIME_ANDROID_SDK"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L1e
            x5.c r0 = r2.f1151a
            r0.a()
            java.lang.String r1 = "[DEFAULT]"
            java.lang.String r0 = r0.f19166b
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L27
        L1e:
            int r3 = r3.f4675c
            r0 = 1
            if (r3 != r0) goto L24
            goto L25
        L24:
            r0 = 0
        L25:
            if (r0 != 0) goto L31
        L27:
            b7.j r3 = r2.f
            r3.getClass()
            java.lang.String r3 = b7.j.a()
            return r3
        L31:
            d7.b r3 = r2.f1155e
            android.content.SharedPreferences r0 = r3.f4687a
            monitor-enter(r0)
            java.lang.String r1 = r3.a()     // Catch: java.lang.Throwable -> L52
            if (r1 == 0) goto L3d
            goto L41
        L3d:
            java.lang.String r1 = r3.b()     // Catch: java.lang.Throwable -> L52
        L41:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L52
            boolean r3 = android.text.TextUtils.isEmpty(r1)
            if (r3 == 0) goto L51
            b7.j r3 = r2.f
            r3.getClass()
            java.lang.String r1 = b7.j.a()
        L51:
            return r1
        L52:
            r3 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L52
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: b7.c.g(d7.a):java.lang.String");
    }

    @Override // b7.d
    @NonNull
    public final z getId() {
        String str;
        f();
        synchronized (this) {
            str = this.f1159j;
        }
        if (str != null) {
            return n.e(str);
        }
        h5.l lVar = new h5.l();
        b(new h(lVar));
        z zVar = lVar.f6841a;
        this.f1157h.execute(new t(1, this));
        return zVar;
    }

    public final d7.a h(d7.a aVar) throws e {
        int responseCode;
        e7.a aVarE;
        String str = aVar.f4674b;
        String string = null;
        if (str != null && str.length() == 11) {
            d7.b bVar = this.f1155e;
            synchronized (bVar.f4687a) {
                String[] strArr = d7.b.f4686c;
                int r82 = 0;
                while (true) {
                    if (r82 >= 4) {
                        break;
                    }
                    String str2 = strArr[r82];
                    String string2 = bVar.f4687a.getString("|T|" + bVar.f4688b + "|" + str2, null);
                    if (string2 == null || string2.isEmpty()) {
                        r82++;
                    } else if (string2.startsWith("{")) {
                        try {
                            string = new JSONObject(string2).getString("token");
                        } catch (JSONException unused) {
                        }
                    } else {
                        string = string2;
                    }
                }
            }
        }
        e7.c cVar = this.f1152b;
        x5.c cVar2 = this.f1151a;
        cVar2.a();
        String str3 = cVar2.f19167c.f19176a;
        String str4 = aVar.f4674b;
        x5.c cVar3 = this.f1151a;
        cVar3.a();
        String str5 = cVar3.f19167c.f19181g;
        x5.c cVar4 = this.f1151a;
        cVar4.a();
        String str6 = cVar4.f19167c.f19177b;
        e7.e eVar = cVar.f5134d;
        if (!eVar.b()) {
            throw new e("Firebase Installations Service is unavailable. Please try again later.");
        }
        URL urlA = e7.c.a(String.format("projects/%s/installations", str5));
        for (int r14 = 0; r14 <= 1; r14++) {
            TrafficStats.setThreadStatsTag(32769);
            HttpURLConnection httpURLConnectionC = cVar.c(urlA, str3);
            try {
                try {
                    httpURLConnectionC.setRequestMethod(ShareTarget.METHOD_POST);
                    httpURLConnectionC.setDoOutput(true);
                    if (string != null) {
                        httpURLConnectionC.addRequestProperty("x-goog-fis-android-iid-migration-auth", string);
                    }
                    e7.c.g(httpURLConnectionC, str4, str6);
                    responseCode = httpURLConnectionC.getResponseCode();
                    eVar.d(responseCode);
                } catch (IOException | AssertionError unused2) {
                }
                if (responseCode >= 200 && responseCode < 300) {
                    aVarE = e7.c.e(httpURLConnectionC);
                    httpURLConnectionC.disconnect();
                    TrafficStats.clearThreadStatsTag();
                } else {
                    e7.c.b(httpURLConnectionC, str6, str3, str5);
                    if (responseCode == 429) {
                        throw new e("Firebase servers have received too many requests from this client in a short period of time. Please try again later.");
                    }
                    if (responseCode < 500 || responseCode >= 600) {
                        try {
                            Log.e("Firebase-Installations", "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase.");
                            e7.a aVar2 = new e7.a(null, null, null, null, 2);
                            httpURLConnectionC.disconnect();
                            TrafficStats.clearThreadStatsTag();
                            aVarE = aVar2;
                        } catch (IOException | AssertionError unused3) {
                        }
                    }
                    httpURLConnectionC.disconnect();
                    TrafficStats.clearThreadStatsTag();
                }
                int r32 = g.d.c(aVarE.f5124e);
                if (r32 != 0) {
                    if (r32 != 1) {
                        throw new e("Firebase Installations Service is unavailable. Please try again later.");
                    }
                    a.C0069a c0069aH = aVar.h();
                    c0069aH.f4685g = "BAD CONFIG";
                    c0069aH.b(5);
                    return c0069aH.a();
                }
                String str7 = aVarE.f5121b;
                String str8 = aVarE.f5122c;
                l lVar = this.f1154d;
                lVar.getClass();
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                lVar.f1172a.getClass();
                long seconds = timeUnit.toSeconds(System.currentTimeMillis());
                String strB = aVarE.f5123d.b();
                long jC = aVarE.f5123d.c();
                a.C0069a c0069a = new a.C0069a(aVar);
                c0069a.f4680a = str7;
                c0069a.b(4);
                c0069a.f4682c = strB;
                c0069a.f4683d = str8;
                c0069a.f4684e = Long.valueOf(jC);
                c0069a.f = Long.valueOf(seconds);
                return c0069a.a();
            } finally {
                httpURLConnectionC.disconnect();
                TrafficStats.clearThreadStatsTag();
            }
        }
        throw new e("Firebase Installations Service is unavailable. Please try again later.");
    }

    public final void i(Exception exc) {
        synchronized (this.f1156g) {
            Iterator it = this.f1161l.iterator();
            while (it.hasNext()) {
                if (((k) it.next()).a(exc)) {
                    it.remove();
                }
            }
        }
    }

    public final void j(d7.a aVar) {
        synchronized (this.f1156g) {
            Iterator it = this.f1161l.iterator();
            while (it.hasNext()) {
                if (((k) it.next()).b(aVar)) {
                    it.remove();
                }
            }
        }
    }

    public final synchronized void k(String str) {
        this.f1159j = str;
    }

    public final synchronized void l(d7.a aVar, d7.a aVar2) {
        if (this.f1160k.size() != 0 && !aVar.f4674b.equals(aVar2.f4674b)) {
            Iterator it = this.f1160k.iterator();
            while (it.hasNext()) {
                ((c7.a) it.next()).a();
            }
        }
    }
}
