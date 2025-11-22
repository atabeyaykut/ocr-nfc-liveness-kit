package b1;

import android.util.Log;
import androidx.annotation.NonNull;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class c implements v0.d<ByteBuffer> {
    @Override // v0.d
    public final boolean b(@NonNull ByteBuffer byteBuffer, @NonNull File file, @NonNull v0.h hVar) throws Throwable {
        try {
            q1.a.d(byteBuffer, file);
            return true;
        } catch (IOException e10) {
            if (Log.isLoggable("ByteBufferEncoder", 3)) {
                Log.d("ByteBufferEncoder", "Failed to write data", e10);
            }
            return false;
        }
    }
}
