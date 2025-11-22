package h6;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import android.util.Log;
import e6.d;
import h6.e;
import j6.a0;
import j6.b;
import j6.g;
import j6.j;
import j6.u;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.StringWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
public final class t {

    /* renamed from: p, reason: collision with root package name */
    public static final i f6958p = new FilenameFilter() { // from class: h6.i
        @Override // java.io.FilenameFilter
        public final boolean accept(File file, String str) {
            return str.startsWith(".ae");
        }
    };

    /* renamed from: a, reason: collision with root package name */
    public final Context f6959a;

    /* renamed from: b, reason: collision with root package name */
    public final c0 f6960b;

    /* renamed from: c, reason: collision with root package name */
    public final x0.t f6961c;

    /* renamed from: d, reason: collision with root package name */
    public final f f6962d;

    /* renamed from: e, reason: collision with root package name */
    public final g0 f6963e;
    public final m6.f f;

    /* renamed from: g, reason: collision with root package name */
    public final a f6964g;

    /* renamed from: h, reason: collision with root package name */
    public final i6.b f6965h;

    /* renamed from: i, reason: collision with root package name */
    public final e6.a f6966i;

    /* renamed from: j, reason: collision with root package name */
    public final f6.a f6967j;

    /* renamed from: k, reason: collision with root package name */
    public final m0 f6968k;

    /* renamed from: l, reason: collision with root package name */
    public b0 f6969l;

    /* renamed from: m, reason: collision with root package name */
    public final h5.l<Boolean> f6970m = new h5.l<>();

    /* renamed from: n, reason: collision with root package name */
    public final h5.l<Boolean> f6971n = new h5.l<>();

    /* renamed from: o, reason: collision with root package name */
    public final h5.l<Void> f6972o = new h5.l<>();

    public t(Context context, f fVar, g0 g0Var, c0 c0Var, m6.f fVar2, x0.t tVar, a aVar, i6.b bVar, m0 m0Var, e6.a aVar2, f6.a aVar3) {
        new AtomicBoolean(false);
        this.f6959a = context;
        this.f6962d = fVar;
        this.f6963e = g0Var;
        this.f6960b = c0Var;
        this.f = fVar2;
        this.f6961c = tVar;
        this.f6964g = aVar;
        this.f6965h = bVar;
        this.f6966i = aVar2;
        this.f6967j = aVar3;
        this.f6968k = m0Var;
    }

    public static void a(t tVar) {
        Integer num;
        tVar.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        g0 g0Var = tVar.f6963e;
        new d(g0Var);
        String str = d.f6897b;
        String strE = androidx.browser.browseractions.b.e("Opening a new session with ID ", str);
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            Log.d("FirebaseCrashlytics", strE, null);
        }
        Locale locale = Locale.US;
        String str2 = String.format(locale, "Crashlytics Android SDK/%s", "18.2.6");
        String str3 = g0Var.f6920c;
        a aVar = tVar.f6964g;
        j6.x xVar = new j6.x(str3, aVar.f6881e, aVar.f, g0Var.c(), androidx.constraintlayout.core.a.a(aVar.f6879c != null ? 4 : 1), aVar.f6882g);
        String str4 = Build.VERSION.RELEASE;
        String str5 = Build.VERSION.CODENAME;
        Context context = tVar.f6959a;
        j6.z zVar = new j6.z(str4, str5, e.j(context));
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        long blockCount = statFs.getBlockCount() * statFs.getBlockSize();
        e.a aVar2 = e.a.UNKNOWN;
        String str6 = Build.CPU_ABI;
        boolean zIsEmpty = TextUtils.isEmpty(str6);
        e.a aVar3 = e.a.UNKNOWN;
        if (!zIsEmpty) {
            e.a aVar4 = (e.a) e.a.f6904b.get(str6.toLowerCase(locale));
            if (aVar4 != null) {
                aVar3 = aVar4;
            }
        } else if (Log.isLoggable("FirebaseCrashlytics", 2)) {
            Log.v("FirebaseCrashlytics", "Architecture#getValue()::Build.CPU_ABI returned null or empty", null);
        }
        int r20 = aVar3.ordinal();
        String str7 = Build.MODEL;
        int r22 = Runtime.getRuntime().availableProcessors();
        long jG = e.g();
        boolean zI = e.i(context);
        int r28 = e.d(context);
        String str8 = Build.MANUFACTURER;
        String str9 = Build.PRODUCT;
        tVar.f6966i.c(str, str2, jCurrentTimeMillis, new j6.w(xVar, zVar, new j6.y(r20, str7, r22, jG, blockCount, zI, r28, str8, str9)));
        tVar.f6965h.a(str);
        m0 m0Var = tVar.f6968k;
        z zVar2 = m0Var.f6937a;
        zVar2.getClass();
        Charset charset = j6.a0.f8115a;
        b.a aVar5 = new b.a();
        aVar5.f8123a = "18.2.6";
        a aVar6 = zVar2.f6995c;
        String str10 = aVar6.f6877a;
        if (str10 == null) {
            throw new NullPointerException("Null gmpAppId");
        }
        aVar5.f8124b = str10;
        g0 g0Var2 = zVar2.f6994b;
        String strC = g0Var2.c();
        if (strC == null) {
            throw new NullPointerException("Null installationUuid");
        }
        aVar5.f8126d = strC;
        String str11 = aVar6.f6881e;
        if (str11 == null) {
            throw new NullPointerException("Null buildVersion");
        }
        aVar5.f8127e = str11;
        String str12 = aVar6.f;
        if (str12 == null) {
            throw new NullPointerException("Null displayVersion");
        }
        aVar5.f = str12;
        aVar5.f8125c = 4;
        g.a aVar7 = new g.a();
        aVar7.f8165e = Boolean.FALSE;
        aVar7.f8163c = Long.valueOf(jCurrentTimeMillis);
        if (str == null) {
            throw new NullPointerException("Null identifier");
        }
        aVar7.f8162b = str;
        String str13 = z.f;
        if (str13 == null) {
            throw new NullPointerException("Null generator");
        }
        aVar7.f8161a = str13;
        String str14 = g0Var2.f6920c;
        if (str14 == null) {
            throw new NullPointerException("Null identifier");
        }
        String strC2 = g0Var2.c();
        e6.d dVar = aVar6.f6882g;
        if (dVar.f5117b == null) {
            dVar.f5117b = new d.a(dVar);
        }
        d.a aVar8 = dVar.f5117b;
        String str15 = aVar8.f5118a;
        if (aVar8 == null) {
            dVar.f5117b = new d.a(dVar);
        }
        aVar7.f = new j6.h(str14, str11, str12, strC2, str15, dVar.f5117b.f5119b);
        u.a aVar9 = new u.a();
        aVar9.f8262a = 3;
        aVar9.f8263b = str4;
        aVar9.f8264c = str5;
        Context context2 = zVar2.f6993a;
        aVar9.f8265d = Boolean.valueOf(e.j(context2));
        aVar7.f8167h = aVar9.a();
        StatFs statFs2 = new StatFs(Environment.getDataDirectory().getPath());
        int r12 = (TextUtils.isEmpty(str6) || (num = (Integer) z.f6992e.get(str6.toLowerCase(locale))) == null) ? 7 : num.intValue();
        int r52 = Runtime.getRuntime().availableProcessors();
        long jG2 = e.g();
        long blockCount2 = statFs2.getBlockCount() * statFs2.getBlockSize();
        boolean zI2 = e.i(context2);
        int r42 = e.d(context2);
        j.a aVar10 = new j.a();
        aVar10.f8185a = Integer.valueOf(r12);
        aVar10.f8186b = str7;
        aVar10.f8187c = Integer.valueOf(r52);
        aVar10.f8188d = Long.valueOf(jG2);
        aVar10.f8189e = Long.valueOf(blockCount2);
        aVar10.f = Boolean.valueOf(zI2);
        aVar10.f8190g = Integer.valueOf(r42);
        aVar10.f8191h = str8;
        aVar10.f8192i = str9;
        aVar7.f8168i = aVar10.a();
        aVar7.f8170k = 3;
        aVar5.f8128g = aVar7.a();
        j6.b bVarA = aVar5.a();
        m6.f fVar = m0Var.f6938b.f10040b;
        a0.e eVar = bVarA.f8121h;
        if (eVar == null) {
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                Log.d("FirebaseCrashlytics", "Could not get session for report", null);
                return;
            }
            return;
        }
        String strG = eVar.g();
        try {
            m6.e.f.getClass();
            v6.d dVar2 = k6.a.f8771a;
            dVar2.getClass();
            StringWriter stringWriter = new StringWriter();
            try {
                dVar2.a(bVarA, stringWriter);
            } catch (IOException unused) {
            }
            m6.e.e(fVar.a(strG, "report"), stringWriter.toString());
            File fileA = fVar.a(strG, "start-time");
            long jI = eVar.i();
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(fileA), m6.e.f10035d);
            try {
                outputStreamWriter.write("");
                fileA.setLastModified(jI * 1000);
                outputStreamWriter.close();
            } finally {
            }
        } catch (IOException e10) {
            String strE2 = androidx.browser.browseractions.b.e("Could not persist report for session ", strG);
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                Log.d("FirebaseCrashlytics", strE2, e10);
            }
        }
    }

    public static h5.z b(t tVar) throws NumberFormatException, ClassNotFoundException {
        boolean z10;
        h5.z zVarC;
        tVar.getClass();
        ArrayList arrayList = new ArrayList();
        for (File file : m6.f.d(tVar.f.f10042a.listFiles(f6958p))) {
            try {
                long j10 = Long.parseLong(file.getName().substring(3));
                try {
                    Class.forName("com.google.firebase.crash.FirebaseCrash");
                    z10 = true;
                } catch (ClassNotFoundException unused) {
                    z10 = false;
                }
                if (z10) {
                    Log.w("FirebaseCrashlytics", "Skipping logging Crashlytics event to Firebase, FirebaseCrash exists", null);
                    zVarC = h5.n.e(null);
                } else {
                    if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                        Log.d("FirebaseCrashlytics", "Logging app exception event to Firebase Analytics", null);
                    }
                    zVarC = h5.n.c(new ScheduledThreadPoolExecutor(1), new j(tVar, j10));
                }
                arrayList.add(zVarC);
            } catch (NumberFormatException unused2) {
                Log.w("FirebaseCrashlytics", "Could not parse app exception timestamp from file " + file.getName(), null);
            }
            file.delete();
        }
        return h5.n.f(arrayList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0334 A[PHI: r0 r22
      0x0334: PHI (r0v88 java.lang.String) = (r0v87 java.lang.String), (r0v94 java.lang.String) binds: [B:125:0x0332, B:122:0x0321] A[DONT_GENERATE, DONT_INLINE]
      0x0334: PHI (r22v3 java.util.ArrayList) = (r22v2 java.util.ArrayList), (r22v4 java.util.ArrayList) binds: [B:125:0x0332, B:122:0x0321] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:249:0x00d2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(boolean r24, o6.d r25) {
        /*
            Method dump skipped, instructions count: 1554
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: h6.t.c(boolean, o6.d):void");
    }

    public final boolean d(o6.d dVar) {
        if (!Boolean.TRUE.equals(this.f6962d.f6913d.get())) {
            throw new IllegalStateException("Not running on background worker thread as intended.");
        }
        b0 b0Var = this.f6969l;
        if (b0Var != null && b0Var.f6890e.get()) {
            Log.w("FirebaseCrashlytics", "Skipping session finalization because a crash has already occurred.", null);
            return false;
        }
        if (Log.isLoggable("FirebaseCrashlytics", 2)) {
            Log.v("FirebaseCrashlytics", "Finalizing previously open sessions.", null);
        }
        try {
            c(true, dVar);
            if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                Log.v("FirebaseCrashlytics", "Closed all previously open sessions.", null);
            }
            return true;
        } catch (Exception e10) {
            Log.e("FirebaseCrashlytics", "Unable to finalize previously open sessions.", e10);
            return false;
        }
    }

    public final h5.k e(h5.z zVar) {
        h5.z zVar2;
        h5.z zVarE;
        m6.f fVar = this.f6968k.f6938b.f10040b;
        boolean z10 = (m6.f.d(fVar.f10044c.listFiles()).isEmpty() && m6.f.d(fVar.f10045d.listFiles()).isEmpty() && m6.f.d(fVar.f10046e.listFiles()).isEmpty()) ? false : true;
        h5.l<Boolean> lVar = this.f6970m;
        if (!z10) {
            if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                Log.v("FirebaseCrashlytics", "No crash reports are available to be sent.", null);
            }
            lVar.d(Boolean.FALSE);
            return h5.n.e(null);
        }
        c5.y yVar = c5.y.f2129g;
        yVar.E("Crash reports are available to be sent.");
        c0 c0Var = this.f6960b;
        if (c0Var.a()) {
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                Log.d("FirebaseCrashlytics", "Automatic data collection is enabled. Allowing upload.", null);
            }
            lVar.d(Boolean.FALSE);
            zVarE = h5.n.e(Boolean.TRUE);
        } else {
            yVar.l("Automatic data collection is disabled.");
            yVar.E("Notifying that unsent reports are available.");
            lVar.d(Boolean.TRUE);
            synchronized (c0Var.f6892b) {
                zVar2 = c0Var.f6893c.f6841a;
            }
            n nVar = new n();
            zVar2.getClass();
            h5.y yVar2 = h5.m.f6842a;
            h5.z zVar3 = new h5.z();
            zVar2.f6873b.a(new h5.t(yVar2, nVar, zVar3));
            zVar2.u();
            yVar.l("Waiting for send/deleteUnsentReports to be called.");
            h5.z zVar4 = this.f6971n.f6841a;
            ExecutorService executorService = p0.f6951a;
            h5.l lVar2 = new h5.l();
            androidx.camera.camera2.interop.d dVar = new androidx.camera.camera2.interop.d(5, lVar2);
            zVar3.f(dVar);
            zVar4.f(dVar);
            zVarE = lVar2.f6841a;
        }
        q qVar = new q(this, zVar);
        zVarE.getClass();
        h5.y yVar3 = h5.m.f6842a;
        h5.z zVar5 = new h5.z();
        zVarE.f6873b.a(new h5.t(yVar3, qVar, zVar5));
        zVarE.u();
        return zVar5;
    }
}
