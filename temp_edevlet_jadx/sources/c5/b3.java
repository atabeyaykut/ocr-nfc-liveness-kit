package c5;

import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.util.Log;
import androidx.core.location.LocationRequestCompat;
import androidx.exifinterface.media.ExifInterface;

/* loaded from: classes.dex */
public final class b3 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1413a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f1414b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1415c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f1416d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f1417e;
    public final /* synthetic */ e3 f;

    public b3(e3 e3Var, int r22, String str, Object obj, Object obj2, Object obj3) {
        this.f = e3Var;
        this.f1413a = r22;
        this.f1414b = str;
        this.f1415c = obj;
        this.f1416d = obj2;
        this.f1417e = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SharedPreferences.Editor editorEdit;
        e3 e3Var;
        char c10;
        s3 s3Var = ((i4) this.f.f2115a).f1634h;
        i4.c(s3Var);
        if (!s3Var.f2147b) {
            Log.println(6, this.f.t(), "Persisted config not initialized. Not logging error/warn");
            return;
        }
        e3 e3Var2 = this.f;
        if (e3Var2.f1503c == 0) {
            e eVar = ((i4) e3Var2.f2115a).f1633g;
            if (eVar.f1486d == null) {
                synchronized (eVar) {
                    if (eVar.f1486d == null) {
                        ApplicationInfo applicationInfo = ((i4) eVar.f2115a).f1628a.getApplicationInfo();
                        String strA = w3.e.a();
                        if (applicationInfo != null) {
                            String str = applicationInfo.processName;
                            eVar.f1486d = Boolean.valueOf(str != null && str.equals(strA));
                        }
                        if (eVar.f1486d == null) {
                            eVar.f1486d = Boolean.TRUE;
                            e3 e3Var3 = ((i4) eVar.f2115a).f1635j;
                            i4.e(e3Var3);
                            e3Var3.f.a("My process not in the list of running processes");
                        }
                    }
                }
            }
            if (eVar.f1486d.booleanValue()) {
                e3Var = this.f;
                ((i4) e3Var.f2115a).getClass();
                c10 = 'C';
            } else {
                e3Var = this.f;
                ((i4) e3Var.f2115a).getClass();
                c10 = 'c';
            }
            e3Var.f1503c = c10;
        }
        e3 e3Var4 = this.f;
        if (e3Var4.f1504d < 0) {
            ((i4) e3Var4.f2115a).f1633g.g();
            e3Var4.f1504d = 46000L;
        }
        char cCharAt = "01VDIWEA?".charAt(this.f1413a);
        e3 e3Var5 = this.f;
        char c11 = e3Var5.f1503c;
        long j10 = e3Var5.f1504d;
        String strR = e3.r(true, this.f1414b, this.f1415c, this.f1416d, this.f1417e);
        StringBuilder sb2 = new StringBuilder(strR.length() + 24);
        sb2.append(ExifInterface.GPS_MEASUREMENT_2D);
        sb2.append(cCharAt);
        sb2.append(c11);
        sb2.append(j10);
        sb2.append(":");
        sb2.append(strR);
        String string = sb2.toString();
        if (string.length() > 1024) {
            string = this.f1414b.substring(0, 1024);
        }
        p3 p3Var = s3Var.f1964d;
        if (p3Var != null) {
            s3 s3Var2 = p3Var.f1847e;
            s3Var2.b();
            if (p3Var.f1847e.g().getLong(p3Var.f1843a, 0L) == 0) {
                p3Var.a();
            }
            if (string == null) {
                string = "";
            }
            SharedPreferences sharedPreferencesG = s3Var2.g();
            String str2 = p3Var.f1844b;
            long j11 = sharedPreferencesG.getLong(str2, 0L);
            String str3 = p3Var.f1845c;
            if (j11 <= 0) {
                editorEdit = s3Var2.g().edit();
                editorEdit.putString(str3, string);
                editorEdit.putLong(str2, 1L);
            } else {
                v7 v7Var = ((i4) s3Var2.f2115a).f1638m;
                i4.c(v7Var);
                long jNextLong = v7Var.p().nextLong();
                long j12 = j11 + 1;
                long j13 = LocationRequestCompat.PASSIVE_INTERVAL / j12;
                editorEdit = s3Var2.g().edit();
                if ((jNextLong & LocationRequestCompat.PASSIVE_INTERVAL) < j13) {
                    editorEdit.putString(str3, string);
                }
                editorEdit.putLong(str2, j12);
            }
            editorEdit.apply();
        }
    }
}
