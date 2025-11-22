package w3;

import android.os.Process;
import android.os.StrictMode;
import androidx.annotation.Nullable;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import r3.r;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public static String f18675a;

    /* renamed from: b, reason: collision with root package name */
    public static int f18676b;

    @Nullable
    public static String a() throws Throwable {
        String strTrim;
        if (f18675a == null) {
            int r12 = f18676b;
            if (r12 == 0) {
                r12 = Process.myPid();
                f18676b = r12;
            }
            String str = null;
            BufferedReader bufferedReader = null;
            BufferedReader bufferedReader2 = null;
            if (r12 > 0) {
                try {
                    String str2 = "/proc/" + r12 + "/cmdline";
                    StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    try {
                        BufferedReader bufferedReader3 = new BufferedReader(new FileReader(str2));
                        try {
                            String line = bufferedReader3.readLine();
                            r.i(line);
                            strTrim = line.trim();
                        } catch (IOException unused) {
                            strTrim = null;
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedReader2 = bufferedReader3;
                            c.a(bufferedReader2);
                            throw th;
                        }
                        bufferedReader = bufferedReader3;
                    } finally {
                        StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                    }
                } catch (IOException unused2) {
                    strTrim = null;
                } catch (Throwable th3) {
                    th = th3;
                }
                c.a(bufferedReader);
                str = strTrim;
            }
            f18675a = str;
        }
        return f18675a;
    }
}
