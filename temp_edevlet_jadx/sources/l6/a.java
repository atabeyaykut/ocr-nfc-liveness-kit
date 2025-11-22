package l6;

import android.util.Log;
import androidx.browser.trusted.sharing.ShareTarget;
import com.google.android.gms.dynamite.descriptors.com.google.mlkit.dynamite.barcode.ModuleDescriptor;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import p4.i1;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final String f9391a;

    /* renamed from: b, reason: collision with root package name */
    public final Map<String, String> f9392b;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f9393c = new HashMap();

    public a(String str, HashMap map) {
        this.f9391a = str;
        this.f9392b = map;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x005f, code lost:
    
        r5 = r1;
        r2 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0063, code lost:
    
        r5 = (java.lang.String) r2.getValue();
        r1 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x006d, code lost:
    
        r2 = r5;
        r5 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0070, code lost:
    
        r8 = r0.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0078, code lost:
    
        if (r8.isEmpty() == false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x007a, code lost:
    
        return r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0081, code lost:
    
        if (r7.contains("?") == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0087, code lost:
    
        if (r7.endsWith("&") != false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0089, code lost:
    
        r8 = "&".concat(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0091, code lost:
    
        return android.support.v4.media.a.f(r7, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0096, code lost:
    
        return androidx.camera.core.impl.utils.f.g(r7, "?", r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0030, code lost:
    
        r5 = (java.lang.String) r1.getValue();
        r1 = "";
     */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x002c, code lost:
    
        if (r1.getValue() != null) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x002f, code lost:
    
        r1 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0030, code lost:
    
        r2.append(r5);
        r0.append(r2.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0040, code lost:
    
        if (r8.hasNext() == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0042, code lost:
    
        r2 = (java.util.Map.Entry) r8.next();
        r5 = new java.lang.StringBuilder("&");
        r5.append((java.lang.String) r2.getKey());
        r5.append("=");
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x005d, code lost:
    
        if (r2.getValue() == null) goto L27;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x006d -> B:5:0x002f). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(java.lang.String r7, java.util.Map r8) {
        /*
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.util.Set r8 = r8.entrySet()
            java.util.Iterator r8 = r8.iterator()
            java.lang.Object r1 = r8.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.Object r3 = r1.getKey()
            java.lang.String r3 = (java.lang.String) r3
            r2.append(r3)
            java.lang.String r3 = "="
            r2.append(r3)
            java.lang.Object r4 = r1.getValue()
            java.lang.String r5 = ""
            if (r4 == 0) goto L2f
            goto L63
        L2f:
            r1 = r5
        L30:
            r2.append(r5)
            java.lang.String r2 = r2.toString()
            r0.append(r2)
            boolean r2 = r8.hasNext()
            java.lang.String r4 = "&"
            if (r2 == 0) goto L70
            java.lang.Object r2 = r8.next()
            java.util.Map$Entry r2 = (java.util.Map.Entry) r2
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>(r4)
            java.lang.Object r4 = r2.getKey()
            java.lang.String r4 = (java.lang.String) r4
            r5.append(r4)
            r5.append(r3)
            java.lang.Object r4 = r2.getValue()
            if (r4 == 0) goto L6d
            r6 = r5
            r5 = r1
            r1 = r2
            r2 = r6
        L63:
            java.lang.Object r1 = r1.getValue()
            java.lang.String r1 = (java.lang.String) r1
            r6 = r5
            r5 = r1
            r1 = r6
            goto L30
        L6d:
            r2 = r5
            r5 = r1
            goto L2f
        L70:
            java.lang.String r8 = r0.toString()
            boolean r0 = r8.isEmpty()
            if (r0 == 0) goto L7b
            return r7
        L7b:
            java.lang.String r0 = "?"
            boolean r1 = r7.contains(r0)
            if (r1 == 0) goto L92
            boolean r0 = r7.endsWith(r4)
            if (r0 != 0) goto L8d
            java.lang.String r8 = r4.concat(r8)
        L8d:
            java.lang.String r7 = android.support.v4.media.a.f(r7, r8)
            return r7
        L92:
            java.lang.String r7 = androidx.camera.core.impl.utils.f.g(r7, r0, r8)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: l6.a.a(java.lang.String, java.util.Map):java.lang.String");
    }

    public final i1 b() throws Throwable {
        Throwable th2;
        HttpsURLConnection httpsURLConnection;
        InputStream inputStream = null;
        String string = null;
        inputStream = null;
        try {
            String strA = a(this.f9391a, this.f9392b);
            String str = "GET Request URL: " + strA;
            if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                Log.v("FirebaseCrashlytics", str, null);
            }
            httpsURLConnection = (HttpsURLConnection) new URL(strA).openConnection();
            try {
                httpsURLConnection.setReadTimeout(ModuleDescriptor.MODULE_VERSION);
                httpsURLConnection.setConnectTimeout(ModuleDescriptor.MODULE_VERSION);
                httpsURLConnection.setRequestMethod(ShareTarget.METHOD_GET);
                for (Map.Entry entry : this.f9393c.entrySet()) {
                    httpsURLConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
                }
                httpsURLConnection.connect();
                int responseCode = httpsURLConnection.getResponseCode();
                InputStream inputStream2 = httpsURLConnection.getInputStream();
                if (inputStream2 != null) {
                    try {
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream2, "UTF-8"));
                        char[] cArr = new char[8192];
                        StringBuilder sb2 = new StringBuilder();
                        while (true) {
                            int r6 = bufferedReader.read(cArr);
                            if (r6 == -1) {
                                break;
                            }
                            sb2.append(cArr, 0, r6);
                        }
                        string = sb2.toString();
                    } catch (Throwable th3) {
                        th2 = th3;
                        inputStream = inputStream2;
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        if (httpsURLConnection != null) {
                            httpsURLConnection.disconnect();
                        }
                        throw th2;
                    }
                }
                if (inputStream2 != null) {
                    inputStream2.close();
                }
                httpsURLConnection.disconnect();
                return new i1(responseCode, string);
            } catch (Throwable th4) {
                th2 = th4;
            }
        } catch (Throwable th5) {
            th2 = th5;
            httpsURLConnection = null;
        }
    }
}
