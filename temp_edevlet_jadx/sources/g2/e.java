package g2;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import com.airbnb.epoxy.c0;
import g2.a;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashSet;
import java.util.Locale;
import java.util.zip.ZipFile;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final HashSet f5794a;

    /* renamed from: b, reason: collision with root package name */
    public final c f5795b;

    /* renamed from: c, reason: collision with root package name */
    public final b f5796c;

    public e() {
        f fVar = new f();
        a aVar = new a();
        this.f5794a = new HashSet();
        this.f5795b = fVar;
        this.f5796c = aVar;
    }

    public static void d(String str, Object... objArr) {
        String.format(Locale.US, str, objArr);
    }

    public final File a(Context context, String str, String str2) {
        String strA = ((f) this.f5795b).a(str);
        return str2 == null || str2.length() == 0 ? new File(context.getDir("lib", 0), strA) : new File(context.getDir("lib", 0), androidx.camera.core.impl.utils.f.g(strA, ".", str2));
    }

    public final void b(Context context, String str) throws Throwable {
        if (context == null) {
            throw new IllegalArgumentException("Given context is null");
        }
        if ("realm-jni".length() == 0) {
            throw new IllegalArgumentException("Given library is either null or empty");
        }
        d("Beginning load of %s...", "realm-jni");
        c(context, "realm-jni", str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r12v5, types: [java.io.Closeable, java.io.FileOutputStream, java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r7v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v7 */
    public final void c(Context context, String str, String str2) throws Throwable {
        a.C0093a c0093a;
        String[] strArrC;
        ZipFile zipFile;
        InputStream inputStream;
        Closeable closeable;
        ?? fileOutputStream;
        c cVar = this.f5795b;
        HashSet hashSet = this.f5794a;
        boolean z10 = false;
        if (hashSet.contains(str)) {
            d("%s already loaded previously!", str);
            return;
        }
        try {
            ((f) cVar).getClass();
            System.loadLibrary(str);
            hashSet.add(str);
            d("%s (%s) was loaded normally!", str, str2);
        } catch (UnsatisfiedLinkError e10) {
            d("Loading the library normally failed: %s", Log.getStackTraceString(e10));
            d("%s (%s) was not loaded normally, re-linking...", str, str2);
            ?? A = a(context, str, str2);
            if (!A.exists()) {
                File dir = context.getDir("lib", 0);
                File fileA = a(context, str, str2);
                f fVar = (f) cVar;
                File[] fileArrListFiles = dir.listFiles(new d(fVar.a(str)));
                if (fileArrListFiles != null) {
                    for (File file : fileArrListFiles) {
                        if (!file.getAbsolutePath().equals(fileA.getAbsolutePath())) {
                            file.delete();
                        }
                    }
                }
                fVar.getClass();
                String[] strArr = Build.SUPPORTED_ABIS;
                if (strArr.length <= 0) {
                    String str3 = Build.CPU_ABI2;
                    strArr = !(str3 == null || str3.length() == 0) ? new String[]{Build.CPU_ABI, str3} : new String[]{Build.CPU_ABI};
                }
                String strA = fVar.a(str);
                ((a) this.f5796c).getClass();
                try {
                    a.C0093a c0093aB = a.b(context, strArr, strA, this);
                    try {
                        if (c0093aB == null) {
                            try {
                                strArrC = a.c(context, strA);
                            } catch (Exception e11) {
                                strArrC = new String[]{e11.toString()};
                            }
                            throw new c0(strArr, strA, strArrC);
                        }
                        int r22 = 0;
                        while (true) {
                            int r6 = r22 + 1;
                            zipFile = c0093aB.f5791a;
                            if (r22 < 5) {
                                Object[] objArr = new Object[1];
                                objArr[z10 ? 1 : 0] = strA;
                                d("Found %s! Extracting...", objArr);
                                try {
                                    if (A.exists() || A.createNewFile()) {
                                        try {
                                            inputStream = zipFile.getInputStream(c0093aB.f5792b);
                                        } catch (FileNotFoundException | IOException unused) {
                                            inputStream = null;
                                        } catch (Throwable th2) {
                                            th = th2;
                                            inputStream = null;
                                        }
                                        try {
                                            fileOutputStream = new FileOutputStream((File) A);
                                            try {
                                                try {
                                                    byte[] bArr = new byte[4096];
                                                    long j10 = 0;
                                                    ?? r72 = z10;
                                                    while (true) {
                                                        int r15 = inputStream.read(bArr);
                                                        if (r15 == -1) {
                                                            break;
                                                        }
                                                        fileOutputStream.write(bArr, r72, r15);
                                                        j10 += r15;
                                                        r72 = 0;
                                                    }
                                                    fileOutputStream.flush();
                                                    fileOutputStream.getFD().sync();
                                                    if (j10 == A.length()) {
                                                        a.a(inputStream);
                                                        a.a(fileOutputStream);
                                                        A.setReadable(true, r72);
                                                        A.setExecutable(true, r72);
                                                        A.setWritable(true);
                                                        break;
                                                    }
                                                } catch (Throwable th3) {
                                                    th = th3;
                                                    closeable = fileOutputStream;
                                                    a.a(inputStream);
                                                    a.a(closeable);
                                                    throw th;
                                                }
                                            } catch (FileNotFoundException | IOException unused2) {
                                            }
                                        } catch (FileNotFoundException | IOException unused3) {
                                            fileOutputStream = 0;
                                            a.a(inputStream);
                                            a.a(fileOutputStream);
                                            r22 = r6;
                                            z10 = false;
                                        } catch (Throwable th4) {
                                            th = th4;
                                            closeable = null;
                                            a.a(inputStream);
                                            a.a(closeable);
                                            throw th;
                                        }
                                        a.a(inputStream);
                                        a.a(fileOutputStream);
                                    }
                                } catch (IOException unused4) {
                                }
                                r22 = r6;
                                z10 = false;
                            } else if (zipFile != null) {
                                break;
                            }
                        }
                        try {
                            zipFile.close();
                        } catch (IOException unused5) {
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        c0093a = c0093aB;
                        if (c0093a != null) {
                            try {
                                ZipFile zipFile2 = c0093a.f5791a;
                                if (zipFile2 != null) {
                                    zipFile2.close();
                                }
                            } catch (IOException unused6) {
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th6) {
                    th = th6;
                    c0093a = null;
                }
            }
            String absolutePath = A.getAbsolutePath();
            ((f) cVar).getClass();
            System.load(absolutePath);
            hashSet.add(str);
            d("%s (%s) was re-linked!", str, str2);
        }
    }
}
