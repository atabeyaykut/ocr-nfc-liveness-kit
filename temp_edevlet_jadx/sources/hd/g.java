package hd;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Build;
import android.provider.Settings;

/* loaded from: classes2.dex */
public final class g extends AsyncTask<Void, Void, Void> {

    /* renamed from: a, reason: collision with root package name */
    public final d f7102a;

    /* renamed from: b, reason: collision with root package name */
    public final a f7103b;

    public interface a {
    }

    public g(Context context, String str, e eVar) {
        StringBuilder sb2 = new StringBuilder("Android Beacon Library;2.20.4;");
        sb2.append(context.getPackageName());
        sb2.append(";");
        sb2.append(Settings.Secure.getString(context.getContentResolver(), "android_id"));
        sb2.append(";");
        String str2 = Build.VERSION.RELEASE;
        String str3 = Build.ID;
        String str4 = Build.MODEL;
        sb2.append("" + Build.MANUFACTURER + ";" + str4 + ";" + str3 + ";" + str2);
        this.f7102a = new d(str, sb2.toString());
        this.f7103b = eVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00b6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x00b2 A[ADDED_TO_REGION, EDGE_INSN: B:83:0x00b2->B:41:0x00b2 BREAK  A[LOOP:0: B:3:0x0012->B:87:0x0012], REMOVE, SYNTHETIC] */
    @Override // android.os.AsyncTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Void doInBackground(java.lang.Void[] r15) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: hd.g.doInBackground(java.lang.Object[]):java.lang.Object");
    }
}
