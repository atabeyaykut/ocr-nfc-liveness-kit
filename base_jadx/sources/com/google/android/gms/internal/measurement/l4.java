package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.StrictMode;
import android.util.Log;
import androidx.collection.ArrayMap;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final /* synthetic */ class l4 implements g5 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3607a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f3608b;

    public /* synthetic */ l4(int r12, Object obj) {
        this.f3607a = r12;
        this.f3608b = obj;
    }

    @Override // com.google.android.gms.internal.measurement.g5
    public final Object a() {
        e5 f5Var;
        File file;
        int r02 = this.f3607a;
        Object obj = this.f3608b;
        switch (r02) {
            case 0:
                n4 n4Var = (n4) obj;
                Cursor cursorQuery = n4Var.f3635a.query(n4Var.f3636b, n4.f3634h, null, null, null);
                if (cursorQuery == null) {
                    return Collections.emptyMap();
                }
                try {
                    int count = cursorQuery.getCount();
                    if (count == 0) {
                        return Collections.emptyMap();
                    }
                    Map arrayMap = count <= 256 ? new ArrayMap(count) : new HashMap(count, 1.0f);
                    while (cursorQuery.moveToNext()) {
                        arrayMap.put(cursorQuery.getString(0), cursorQuery.getString(1));
                    }
                    cursorQuery.close();
                    return arrayMap;
                } finally {
                    cursorQuery.close();
                }
            default:
                Context contextCreateDeviceProtectedStorageContext = (Context) obj;
                Object obj2 = b5.f;
                String str = Build.TYPE;
                String str2 = Build.TAGS;
                if ((!str.equals("eng") && !str.equals("userdebug")) || (!str2.contains("dev-keys") && !str2.contains("test-keys"))) {
                    return d5.f3440a;
                }
                if ((Build.VERSION.SDK_INT >= 24) && !contextCreateDeviceProtectedStorageContext.isDeviceProtectedStorage()) {
                    contextCreateDeviceProtectedStorageContext = contextCreateDeviceProtectedStorageContext.createDeviceProtectedStorageContext();
                }
                StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
                try {
                    StrictMode.allowThreadDiskWrites();
                    try {
                        file = new File(contextCreateDeviceProtectedStorageContext.getDir("phenotype_hermetic", 0), "overrides.txt");
                    } catch (RuntimeException e10) {
                        Log.e("HermeticFileOverrides", "no data dir", e10);
                    }
                    e5 f5Var2 = file.exists() ? new f5(file) : d5.f3440a;
                    if (f5Var2.b()) {
                        File file2 = (File) f5Var2.a();
                        try {
                            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file2)));
                            try {
                                HashMap map = new HashMap();
                                HashMap map2 = new HashMap();
                                while (true) {
                                    String line = bufferedReader.readLine();
                                    if (line != null) {
                                        String[] strArrSplit = line.split(" ", 3);
                                        if (strArrSplit.length != 3) {
                                            Log.e("HermeticFileOverrides", line.length() != 0 ? "Invalid: ".concat(line) : new String("Invalid: "));
                                        } else {
                                            String str3 = new String(strArrSplit[0]);
                                            String strDecode = Uri.decode(new String(strArrSplit[1]));
                                            String strDecode2 = (String) map2.get(strArrSplit[2]);
                                            if (strDecode2 == null) {
                                                String str4 = new String(strArrSplit[2]);
                                                strDecode2 = Uri.decode(str4);
                                                if (strDecode2.length() < 1024 || strDecode2 == str4) {
                                                    map2.put(str4, strDecode2);
                                                }
                                            }
                                            if (!map.containsKey(str3)) {
                                                map.put(str3, new HashMap());
                                            }
                                            ((Map) map.get(str3)).put(strDecode, strDecode2);
                                        }
                                    } else {
                                        String string = file2.toString();
                                        StringBuilder sb2 = new StringBuilder(string.length() + 7);
                                        sb2.append("Parsed ");
                                        sb2.append(string);
                                        Log.i("HermeticFileOverrides", sb2.toString());
                                        s4 s4Var = new s4(map);
                                        bufferedReader.close();
                                        f5Var = new f5(s4Var);
                                    }
                                }
                            } catch (Throwable th2) {
                                try {
                                    bufferedReader.close();
                                } catch (Throwable unused) {
                                }
                                throw th2;
                            }
                        } catch (IOException e11) {
                            throw new RuntimeException(e11);
                        }
                    } else {
                        f5Var = d5.f3440a;
                    }
                    return f5Var;
                } finally {
                    StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                }
        }
    }
}
