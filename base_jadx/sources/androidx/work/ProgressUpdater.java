package androidx.work;

import android.content.Context;
import androidx.annotation.NonNull;
import java.util.UUID;
import m5.a;

/* loaded from: classes.dex */
public interface ProgressUpdater {
    @NonNull
    a<Void> updateProgress(@NonNull Context context, @NonNull UUID r22, @NonNull Data data);
}
