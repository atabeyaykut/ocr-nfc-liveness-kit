package m0;

import androidx.annotation.NonNull;
import d0.c;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final d f9862a;

    public e(@NonNull c.a aVar) {
        this.f9862a = aVar;
    }

    public static String a(String str, c cVar, boolean z10) {
        StringBuilder sb2 = new StringBuilder("lottie_cache_");
        sb2.append(str.replaceAll("\\W+", ""));
        String str2 = cVar.f9861a;
        if (z10) {
            str2 = ".temp" + str2;
        }
        sb2.append(str2);
        return sb2.toString();
    }

    public final File b() {
        c.a aVar = (c.a) this.f9862a;
        aVar.getClass();
        File file = new File(aVar.f4515a.getCacheDir(), "lottie_network_cache");
        if (file.isFile()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public final File c(String str, InputStream inputStream, c cVar) throws IOException {
        File file = new File(b(), a(str, cVar, true));
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int r12 = inputStream.read(bArr);
                    if (r12 == -1) {
                        fileOutputStream.flush();
                        return file;
                    }
                    fileOutputStream.write(bArr, 0, r12);
                }
            } finally {
                fileOutputStream.close();
            }
        } finally {
            inputStream.close();
        }
    }
}
