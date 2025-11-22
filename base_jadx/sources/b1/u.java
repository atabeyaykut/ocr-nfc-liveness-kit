package b1;

import android.util.Log;
import androidx.annotation.NonNull;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class u implements v0.d<InputStream> {

    /* renamed from: a, reason: collision with root package name */
    public final y0.b f1078a;

    public u(y0.b bVar) {
        this.f1078a = bVar;
    }

    @Override // v0.d
    public final boolean b(@NonNull InputStream inputStream, @NonNull File file, @NonNull v0.h hVar) throws Throwable {
        FileOutputStream fileOutputStream;
        InputStream inputStream2 = inputStream;
        y0.b bVar = this.f1078a;
        byte[] bArr = (byte[]) bVar.c(byte[].class, 65536);
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(file);
                while (true) {
                    try {
                        int r72 = inputStream2.read(bArr);
                        if (r72 == -1) {
                            break;
                        }
                        fileOutputStream.write(bArr, 0, r72);
                    } catch (IOException e10) {
                        e = e10;
                        fileOutputStream2 = fileOutputStream;
                        if (Log.isLoggable("StreamEncoder", 3)) {
                            Log.d("StreamEncoder", "Failed to encode data onto the OutputStream", e);
                        }
                        if (fileOutputStream2 != null) {
                            try {
                                fileOutputStream2.close();
                            } catch (IOException unused) {
                            }
                        }
                        bVar.put(bArr);
                        return false;
                    } catch (Throwable th2) {
                        th = th2;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused2) {
                            }
                        }
                        bVar.put(bArr);
                        throw th;
                    }
                }
                fileOutputStream.close();
                try {
                    fileOutputStream.close();
                } catch (IOException unused3) {
                }
                bVar.put(bArr);
                return true;
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream = null;
            }
        } catch (IOException e11) {
            e = e11;
        }
    }
}
