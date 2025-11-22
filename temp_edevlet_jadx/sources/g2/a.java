package g2;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* loaded from: classes.dex */
public final class a implements b {

    /* renamed from: g2.a$a, reason: collision with other inner class name */
    public static class C0093a {

        /* renamed from: a, reason: collision with root package name */
        public final ZipFile f5791a;

        /* renamed from: b, reason: collision with root package name */
        public final ZipEntry f5792b;

        public C0093a(ZipFile zipFile, ZipEntry zipEntry) {
            this.f5791a = zipFile;
            this.f5792b = zipEntry;
        }
    }

    public static void a(Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static C0093a b(Context context, String[] strArr, String str, e eVar) throws IOException {
        String[] strArrD = d(context);
        int length = strArrD.length;
        int r42 = 0;
        while (true) {
            ZipFile zipFile = null;
            if (r42 >= length) {
                return null;
            }
            String str2 = strArrD[r42];
            int r72 = 0;
            while (true) {
                int r82 = r72 + 1;
                if (r72 >= 5) {
                    break;
                }
                try {
                    zipFile = new ZipFile(new File(str2), 1);
                    break;
                } catch (IOException unused) {
                    r72 = r82;
                }
            }
            if (zipFile != null) {
                int r73 = 0;
                while (true) {
                    int r83 = r73 + 1;
                    if (r73 < 5) {
                        for (String str3 : strArr) {
                            String str4 = "lib" + File.separatorChar + str3 + File.separatorChar + str;
                            eVar.getClass();
                            e.d("Looking for %s in APK %s...", str4, str2);
                            ZipEntry entry = zipFile.getEntry(str4);
                            if (entry != null) {
                                return new C0093a(zipFile, entry);
                            }
                        }
                        r73 = r83;
                    } else {
                        try {
                            zipFile.close();
                            break;
                        } catch (IOException unused2) {
                        }
                    }
                }
            }
            r42++;
        }
    }

    public static String[] c(Context context, String str) {
        Pattern patternCompile = Pattern.compile("lib" + File.separatorChar + "([^\\" + File.separatorChar + "]*)" + File.separatorChar + str);
        HashSet hashSet = new HashSet();
        for (String str2 : d(context)) {
            try {
                Enumeration<? extends ZipEntry> enumerationEntries = new ZipFile(new File(str2), 1).entries();
                while (enumerationEntries.hasMoreElements()) {
                    Matcher matcher = patternCompile.matcher(enumerationEntries.nextElement().getName());
                    if (matcher.matches()) {
                        hashSet.add(matcher.group(1));
                    }
                }
            } catch (IOException unused) {
            }
        }
        return (String[]) hashSet.toArray(new String[hashSet.size()]);
    }

    public static String[] d(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        String[] strArr = applicationInfo.splitSourceDirs;
        if (strArr == null || strArr.length == 0) {
            return new String[]{applicationInfo.sourceDir};
        }
        String[] strArr2 = new String[strArr.length + 1];
        strArr2[0] = applicationInfo.sourceDir;
        System.arraycopy(strArr, 0, strArr2, 1, strArr.length);
        return strArr2;
    }
}
