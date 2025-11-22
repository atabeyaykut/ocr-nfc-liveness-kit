package androidx.work;

import android.content.Context;
import androidx.annotation.NonNull;
import java.util.UUID;
import m5.a;

/* loaded from: classes.dex */
public interface ForegroundUpdater {
    @NonNull
    a<Void> setForegroundAsync(@NonNull Context context, @NonNull UUID r22, @NonNull ForegroundInfo foregroundInfo);
}
