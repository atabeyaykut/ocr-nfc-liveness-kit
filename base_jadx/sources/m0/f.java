package m0;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import d0.g;
import d0.r;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipInputStream;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final e f9863a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final b f9864b;

    public f(@NonNull e eVar, @NonNull b bVar) {
        this.f9863a = eVar;
        this.f9864b = bVar;
    }

    @NonNull
    public final r<d0.f> a(@NonNull String str, @NonNull InputStream inputStream, @Nullable String str2, @Nullable String str3) throws IOException {
        c cVar;
        r<d0.f> rVarF;
        if (str2 == null) {
            str2 = "application/json";
        }
        boolean zContains = str2.contains("application/zip");
        e eVar = this.f9863a;
        if (zContains || str.split("\\?")[0].endsWith(".lottie")) {
            p0.c.a();
            cVar = c.ZIP;
            rVarF = str3 == null ? g.f(new ZipInputStream(inputStream), null) : g.f(new ZipInputStream(new FileInputStream(eVar.c(str, inputStream, cVar))), str);
        } else {
            p0.c.a();
            cVar = c.JSON;
            rVarF = str3 == null ? g.c(inputStream, null) : g.c(new FileInputStream(new File(eVar.c(str, inputStream, cVar).getAbsolutePath())), str);
        }
        if (str3 != null && rVarF.f4625a != null) {
            eVar.getClass();
            File file = new File(eVar.b(), e.a(str, cVar, true));
            File file2 = new File(file.getAbsolutePath().replace(".temp", ""));
            boolean zRenameTo = file.renameTo(file2);
            file2.toString();
            p0.c.a();
            if (!zRenameTo) {
                p0.c.b("Unable to rename cache file " + file.getAbsolutePath() + " to " + file2.getAbsolutePath() + ".");
            }
        }
        return rVarF;
    }
}
