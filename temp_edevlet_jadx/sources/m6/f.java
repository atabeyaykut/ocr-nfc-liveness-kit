package m6;

import android.content.Context;
import android.util.Log;
import androidx.annotation.Nullable;
import java.io.File;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final File f10042a;

    /* renamed from: b, reason: collision with root package name */
    public final File f10043b;

    /* renamed from: c, reason: collision with root package name */
    public final File f10044c;

    /* renamed from: d, reason: collision with root package name */
    public final File f10045d;

    /* renamed from: e, reason: collision with root package name */
    public final File f10046e;

    public f(Context context) {
        File file = new File(context.getFilesDir(), ".com.google.firebase.crashlytics.files.v1");
        b(file);
        this.f10042a = file;
        File file2 = new File(file, "open-sessions");
        b(file2);
        this.f10043b = file2;
        File file3 = new File(file, "reports");
        b(file3);
        this.f10044c = file3;
        File file4 = new File(file, "priority-reports");
        b(file4);
        this.f10045d = file4;
        File file5 = new File(file, "native-reports");
        b(file5);
        this.f10046e = file5;
    }

    public static synchronized void b(File file) {
        if (file.exists()) {
            if (file.isDirectory()) {
                return;
            }
            String str = "Unexpected non-directory file: " + file + "; deleting file and creating new directory.";
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                Log.d("FirebaseCrashlytics", str, null);
            }
            file.delete();
        }
        if (file.mkdirs()) {
            return;
        }
        throw new IllegalStateException("Could not create Crashlytics-specific directory: " + file);
    }

    public static boolean c(File file) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                c(file2);
            }
        }
        return file.delete();
    }

    public static <T> List<T> d(@Nullable T[] tArr) {
        return tArr == null ? Collections.emptyList() : Arrays.asList(tArr);
    }

    public final File a(String str, String str2) {
        File file = new File(this.f10043b, str);
        file.mkdirs();
        return new File(file, str2);
    }
}
