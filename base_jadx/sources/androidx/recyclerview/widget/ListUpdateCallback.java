package androidx.recyclerview.widget;

import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public interface ListUpdateCallback {
    void onChanged(int r12, int r22, @Nullable Object obj);

    void onInserted(int r12, int r22);

    void onMoved(int r12, int r22);

    void onRemoved(int r12, int r22);
}
