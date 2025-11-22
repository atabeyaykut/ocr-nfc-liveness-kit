package x5;

import androidx.annotation.NonNull;
import r3.r;

/* loaded from: classes2.dex */
public class d extends Exception {
    @Deprecated
    public d() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(@NonNull String str) {
        super(str);
        r.g("Detail message must not be empty", str);
    }
}
