package hd;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Build;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class f implements c {

    /* renamed from: a, reason: collision with root package name */
    public HashMap f7095a;

    /* renamed from: b, reason: collision with root package name */
    public a f7096b;

    /* renamed from: c, reason: collision with root package name */
    public c f7097c;

    /* renamed from: d, reason: collision with root package name */
    public a f7098d;

    /* renamed from: e, reason: collision with root package name */
    public final a f7099e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final Context f7100g;

    /* renamed from: h, reason: collision with root package name */
    public final ReentrantLock f7101h;

    public f(Context context) {
        a aVar = new a(Build.VERSION.RELEASE, Build.ID, Build.MODEL, Build.MANUFACTURER);
        this.f = null;
        this.f7101h = new ReentrantLock();
        this.f7099e = aVar;
        this.f = "https://s3.amazonaws.com/android-beacon-library/android-distance.json";
        this.f7100g = context;
        boolean zF = f();
        if (!zF) {
            if (context.checkCallingOrSelfPermission("android.permission.INTERNET") != 0) {
                id.b.f("ModelSpecificDistanceCalculator", "App has no android.permission.INTERNET permission.  Cannot check for distance model updates", new Object[0]);
            } else {
                new g(context, "https://s3.amazonaws.com/android-beacon-library/android-distance.json", new e(this)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            }
        }
        if (!zF) {
            try {
                c(g());
            } catch (Exception e10) {
                this.f7095a = new HashMap();
                id.b.b(e10, "ModelSpecificDistanceCalculator", "Cannot build model distance calculations", new Object[0]);
            }
        }
        this.f7097c = e(this.f7099e);
        this.f7097c = e(aVar);
    }

    public static boolean b(f fVar, String str) throws IOException {
        fVar.getClass();
        boolean z10 = false;
        FileOutputStream fileOutputStreamOpenFileOutput = null;
        try {
            try {
                fileOutputStreamOpenFileOutput = fVar.f7100g.openFileOutput("model-distance-calculations.json", 0);
                fileOutputStreamOpenFileOutput.write(str.getBytes());
                fileOutputStreamOpenFileOutput.close();
                try {
                    fileOutputStreamOpenFileOutput.close();
                } catch (Exception unused) {
                }
                id.b.d("ModelSpecificDistanceCalculator", "Successfully saved new distance model file", new Object[0]);
                z10 = true;
            } catch (Throwable th2) {
                if (fileOutputStreamOpenFileOutput != null) {
                    try {
                        fileOutputStreamOpenFileOutput.close();
                    } catch (Exception unused2) {
                    }
                }
                throw th2;
            }
        } catch (Exception e10) {
            id.b.e(e10, "ModelSpecificDistanceCalculator", "Cannot write updated distance model to local storage", new Object[0]);
            if (fileOutputStreamOpenFileOutput != null) {
                try {
                    fileOutputStreamOpenFileOutput.close();
                } catch (Exception unused3) {
                }
            }
        }
        return z10;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0047 A[Catch: all -> 0x001a, TRY_ENTER, TryCatch #2 {all -> 0x001a, blocks: (B:5:0x0010, B:9:0x001e, B:18:0x0047, B:19:0x004e), top: B:32:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001e A[Catch: all -> 0x001a, TRY_LEAVE, TryCatch #2 {all -> 0x001a, blocks: (B:5:0x0010, B:9:0x001e, B:18:0x0047, B:19:0x004e), top: B:32:0x0010 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String g() throws java.lang.Throwable {
        /*
            java.lang.String r0 = "/model-distance-calculations.json"
            java.lang.Class<hd.f> r1 = hd.f.class
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r3 = 0
            java.io.InputStream r4 = r1.getResourceAsStream(r0)     // Catch: java.lang.Throwable -> L51
            if (r4 != 0) goto L1c
            java.lang.ClassLoader r1 = r1.getClassLoader()     // Catch: java.lang.Throwable -> L1a
            java.io.InputStream r0 = r1.getResourceAsStream(r0)     // Catch: java.lang.Throwable -> L1a
            r4 = r0
            goto L1c
        L1a:
            r0 = move-exception
            goto L4f
        L1c:
            if (r4 == 0) goto L47
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L1a
            java.io.InputStreamReader r1 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L1a
            java.lang.String r5 = "UTF-8"
            r1.<init>(r4, r5)     // Catch: java.lang.Throwable -> L1a
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L1a
        L2a:
            java.lang.String r1 = r0.readLine()     // Catch: java.lang.Throwable -> L44
            if (r1 == 0) goto L39
            r2.append(r1)     // Catch: java.lang.Throwable -> L44
            r1 = 10
            r2.append(r1)     // Catch: java.lang.Throwable -> L44
            goto L2a
        L39:
            r0.close()
            r4.close()
            java.lang.String r0 = r2.toString()
            return r0
        L44:
            r1 = move-exception
            r3 = r0
            goto L53
        L47:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException     // Catch: java.lang.Throwable -> L1a
            java.lang.String r1 = "Cannot load resource at model-distance-calculations.json"
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L1a
            throw r0     // Catch: java.lang.Throwable -> L1a
        L4f:
            r1 = r0
            goto L53
        L51:
            r1 = move-exception
            r4 = r3
        L53:
            if (r3 == 0) goto L58
            r3.close()
        L58:
            if (r4 == 0) goto L5d
            r4.close()
        L5d:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: hd.f.g():java.lang.String");
    }

    @Override // hd.c
    public final double a(int r22, double d10) {
        c cVar = this.f7097c;
        if (cVar != null) {
            return cVar.a(r22, d10);
        }
        id.b.f("ModelSpecificDistanceCalculator", "distance calculator has not been set", new Object[0]);
        return -1.0d;
    }

    public final void c(String str) throws JSONException {
        HashMap map = new HashMap();
        JSONArray jSONArray = new JSONObject(str).getJSONArray("models");
        for (int r42 = 0; r42 < jSONArray.length(); r42++) {
            JSONObject jSONObject = jSONArray.getJSONObject(r42);
            boolean z10 = jSONObject.has("default") ? jSONObject.getBoolean("default") : false;
            Double dValueOf = Double.valueOf(jSONObject.getDouble("coefficient1"));
            Double dValueOf2 = Double.valueOf(jSONObject.getDouble("coefficient2"));
            Double dValueOf3 = Double.valueOf(jSONObject.getDouble("coefficient3"));
            String string = jSONObject.getString("version");
            String string2 = jSONObject.getString("build_number");
            String string3 = jSONObject.getString("model");
            String string4 = jSONObject.getString("manufacturer");
            b bVar = new b(dValueOf.doubleValue(), dValueOf2.doubleValue(), dValueOf3.doubleValue());
            a aVar = new a(string, string2, string3, string4);
            map.put(aVar, bVar);
            if (z10) {
                this.f7096b = aVar;
            }
        }
        this.f7095a = map;
    }

    public final c d(a aVar) {
        id.b.a("ModelSpecificDistanceCalculator", "Finding best distance calculator for %s, %s, %s, %s", aVar.f7082a, aVar.f7083b, aVar.f7084c, aVar.f7085d);
        HashMap map = this.f7095a;
        a aVar2 = null;
        if (map == null) {
            id.b.a("ModelSpecificDistanceCalculator", "Cannot get distance calculator because modelMap was never initialized", new Object[0]);
            return null;
        }
        int r92 = 0;
        for (a aVar3 : map.keySet()) {
            if (aVar3.a(aVar) > r92) {
                r92 = aVar3.a(aVar);
                aVar2 = aVar3;
            }
        }
        if (aVar2 != null) {
            id.b.a("ModelSpecificDistanceCalculator", "found a match with score %s", Integer.valueOf(r92));
            id.b.a("ModelSpecificDistanceCalculator", "Finding best distance calculator for %s, %s, %s, %s", aVar2.f7082a, aVar2.f7083b, aVar2.f7084c, aVar2.f7085d);
            this.f7098d = aVar2;
        } else {
            this.f7098d = this.f7096b;
            id.b.f("ModelSpecificDistanceCalculator", "Cannot find match for this device.  Using default", new Object[0]);
        }
        return (c) this.f7095a.get(this.f7098d);
    }

    public final c e(a aVar) {
        ReentrantLock reentrantLock = this.f7101h;
        reentrantLock.lock();
        try {
            return d(aVar);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean f() {
        FileInputStream fileInputStream;
        File file = new File(this.f7100g.getFilesDir(), "model-distance-calculations.json");
        StringBuilder sb2 = new StringBuilder();
        BufferedReader bufferedReader = null;
        try {
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(fileInputStream));
                    while (true) {
                        try {
                            String line = bufferedReader2.readLine();
                            if (line != null) {
                                sb2.append(line);
                                sb2.append("\n");
                            } else {
                                try {
                                    break;
                                } catch (Exception unused) {
                                }
                            }
                        } catch (FileNotFoundException unused2) {
                            bufferedReader = bufferedReader2;
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (Exception unused3) {
                                }
                            }
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (Exception unused4) {
                                }
                            }
                            return false;
                        } catch (IOException e10) {
                            e = e10;
                            bufferedReader = bufferedReader2;
                            id.b.b(e, "ModelSpecificDistanceCalculator", "Cannot open distance model file %s", file);
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (Exception unused5) {
                                }
                            }
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (Exception unused6) {
                                }
                            }
                            return false;
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedReader = bufferedReader2;
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (Exception unused7) {
                                }
                            }
                            if (fileInputStream == null) {
                                throw th;
                            }
                            try {
                                fileInputStream.close();
                                throw th;
                            } catch (Exception unused8) {
                                throw th;
                            }
                        }
                    }
                    bufferedReader2.close();
                    try {
                        fileInputStream.close();
                    } catch (Exception unused9) {
                    }
                    try {
                        String string = sb2.toString();
                        ReentrantLock reentrantLock = this.f7101h;
                        reentrantLock.lock();
                        try {
                            c(string);
                            return true;
                        } finally {
                            reentrantLock.unlock();
                        }
                    } catch (JSONException e11) {
                        id.b.b(e11, "ModelSpecificDistanceCalculator", "Cannot update distance models from online database at %s with JSON: %s", this.f, sb2.toString());
                        return false;
                    }
                } catch (FileNotFoundException unused10) {
                } catch (IOException e12) {
                    e = e12;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (FileNotFoundException unused11) {
            fileInputStream = null;
        } catch (IOException e13) {
            e = e13;
            fileInputStream = null;
        } catch (Throwable th4) {
            th = th4;
            fileInputStream = null;
        }
    }
}
