package v0;

import androidx.annotation.Nullable;
import java.io.IOException;

/* loaded from: classes.dex */
public final class e extends IOException {
    public e(String str, int r32, @Nullable IOException iOException) {
        super(str + ", status code: " + r32, iOException);
    }
}
