package c5;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.gms.internal.measurement.q9;
import java.io.File;
import java.util.List;

/* loaded from: classes.dex */
public final class j implements p2 {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ j f1654a = new j();

    /* JADX WARN: Removed duplicated region for block: B:22:0x007f A[Catch: SQLiteException -> 0x00e6, TryCatch #3 {SQLiteException -> 0x00e6, blocks: (B:18:0x0044, B:20:0x0070, B:22:0x007f, B:24:0x0087, B:25:0x008a, B:26:0x00b7, B:28:0x00ba, B:30:0x00bd, B:32:0x00c5, B:33:0x00cc, B:34:0x00cf, B:36:0x00d5, B:39:0x00e2, B:40:0x00e5, B:19:0x0069), top: B:51:0x0044, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ba A[Catch: SQLiteException -> 0x00e6, LOOP:1: B:28:0x00ba->B:33:0x00cc, LOOP_START, PHI: r14
      0x00ba: PHI (r14v1 int) = (r14v0 int), (r14v2 int) binds: [B:27:0x00b8, B:33:0x00cc] A[DONT_GENERATE, DONT_INLINE], TryCatch #3 {SQLiteException -> 0x00e6, blocks: (B:18:0x0044, B:20:0x0070, B:22:0x007f, B:24:0x0087, B:25:0x008a, B:26:0x00b7, B:28:0x00ba, B:30:0x00bd, B:32:0x00c5, B:33:0x00cc, B:34:0x00cf, B:36:0x00d5, B:39:0x00e2, B:40:0x00e5, B:19:0x0069), top: B:51:0x0044, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00d5 A[Catch: SQLiteException -> 0x00e6, TryCatch #3 {SQLiteException -> 0x00e6, blocks: (B:18:0x0044, B:20:0x0070, B:22:0x007f, B:24:0x0087, B:25:0x008a, B:26:0x00b7, B:28:0x00ba, B:30:0x00bd, B:32:0x00c5, B:33:0x00cc, B:34:0x00cf, B:36:0x00d5, B:39:0x00e2, B:40:0x00e5, B:19:0x0069), top: B:51:0x0044, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:62:? A[RETURN, SYNTHETIC] */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void b(c5.e3 r16, android.database.sqlite.SQLiteDatabase r17, java.lang.String r18, java.lang.String r19, java.lang.String r20, java.lang.String[] r21) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 247
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c5.j.b(c5.e3, android.database.sqlite.SQLiteDatabase, java.lang.String, java.lang.String, java.lang.String, java.lang.String[]):void");
    }

    public static void c(e3 e3Var, SQLiteDatabase sQLiteDatabase) {
        File file = new File(sQLiteDatabase.getPath());
        boolean readable = file.setReadable(false, false);
        c3 c3Var = e3Var.f1508j;
        if (!readable) {
            c3Var.a("Failed to turn off database read permission");
        }
        if (!file.setWritable(false, false)) {
            c3Var.a("Failed to turn off database write permission");
        }
        if (!file.setReadable(true, true)) {
            c3Var.a("Failed to turn on database read permission for owner");
        }
        if (file.setWritable(true, true)) {
            return;
        }
        c3Var.a("Failed to turn on database write permission for owner");
    }

    @Override // c5.p2
    public Object a() {
        List<q2<?>> list = r2.f1889a;
        return Long.valueOf(q9.f3696b.a().z());
    }
}
