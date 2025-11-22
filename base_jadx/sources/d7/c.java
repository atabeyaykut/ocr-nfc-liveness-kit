package d7;

import androidx.annotation.NonNull;
import d7.a;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final File f4689a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final x5.c f4690b;

    public c(@NonNull x5.c cVar) {
        cVar.a();
        this.f4689a = new File(cVar.f19165a.getFilesDir(), "PersistedInstallation." + cVar.c() + ".json");
        this.f4690b = cVar;
    }

    @NonNull
    public final void a(@NonNull a aVar) throws JSONException, IOException {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("Fid", aVar.f4674b);
            jSONObject.put("Status", g.d.c(aVar.f4675c));
            jSONObject.put("AuthToken", aVar.f4676d);
            jSONObject.put("RefreshToken", aVar.f4677e);
            jSONObject.put("TokenCreationEpochInSecs", aVar.f4678g);
            jSONObject.put("ExpiresInSecs", aVar.f);
            jSONObject.put("FisError", aVar.f4679h);
            x5.c cVar = this.f4690b;
            cVar.a();
            File fileCreateTempFile = File.createTempFile("PersistedInstallation", "tmp", cVar.f19165a.getFilesDir());
            FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
            fileOutputStream.write(jSONObject.toString().getBytes("UTF-8"));
            fileOutputStream.close();
            if (fileCreateTempFile.renameTo(this.f4689a)) {
            } else {
                throw new IOException("unable to rename the tmpfile to PersistedInstallation");
            }
        } catch (IOException | JSONException unused) {
        }
    }

    @NonNull
    public final a b() throws IOException {
        JSONObject jSONObject;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[16384];
        try {
            FileInputStream fileInputStream = new FileInputStream(this.f4689a);
            while (true) {
                try {
                    int r52 = fileInputStream.read(bArr, 0, 16384);
                    if (r52 < 0) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, r52);
                } catch (Throwable th2) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
            jSONObject = new JSONObject(byteArrayOutputStream.toString());
            fileInputStream.close();
        } catch (IOException | JSONException unused) {
            jSONObject = new JSONObject();
        }
        String strOptString = jSONObject.optString("Fid", null);
        int r32 = jSONObject.optInt("Status", 0);
        String strOptString2 = jSONObject.optString("AuthToken", null);
        String strOptString3 = jSONObject.optString("RefreshToken", null);
        long jOptLong = jSONObject.optLong("TokenCreationEpochInSecs", 0L);
        long jOptLong2 = jSONObject.optLong("ExpiresInSecs", 0L);
        String strOptString4 = jSONObject.optString("FisError", null);
        int r22 = d.f4691a;
        a.C0069a c0069a = new a.C0069a();
        c0069a.f = 0L;
        c0069a.b(1);
        c0069a.f4684e = 0L;
        c0069a.f4680a = strOptString;
        c0069a.b(g.d.d(5)[r32]);
        c0069a.f4682c = strOptString2;
        c0069a.f4683d = strOptString3;
        c0069a.f = Long.valueOf(jOptLong);
        c0069a.f4684e = Long.valueOf(jOptLong2);
        c0069a.f4685g = strOptString4;
        return c0069a.a();
    }
}
