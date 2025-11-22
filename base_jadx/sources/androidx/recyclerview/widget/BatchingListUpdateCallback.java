package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public class BatchingListUpdateCallback implements ListUpdateCallback {
    private static final int TYPE_ADD = 1;
    private static final int TYPE_CHANGE = 3;
    private static final int TYPE_NONE = 0;
    private static final int TYPE_REMOVE = 2;
    final ListUpdateCallback mWrapped;
    int mLastEventType = 0;
    int mLastEventPosition = -1;
    int mLastEventCount = -1;
    Object mLastEventPayload = null;

    public BatchingListUpdateCallback(@NonNull ListUpdateCallback listUpdateCallback) {
        this.mWrapped = listUpdateCallback;
    }

    public void dispatchLastEvent() {
        int r02 = this.mLastEventType;
        if (r02 == 0) {
            return;
        }
        if (r02 == 1) {
            this.mWrapped.onInserted(this.mLastEventPosition, this.mLastEventCount);
        } else if (r02 == 2) {
            this.mWrapped.onRemoved(this.mLastEventPosition, this.mLastEventCount);
        } else if (r02 == 3) {
            this.mWrapped.onChanged(this.mLastEventPosition, this.mLastEventCount, this.mLastEventPayload);
        }
        this.mLastEventPayload = null;
        this.mLastEventType = 0;
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    @SuppressLint({"UnknownNullness"})
    public void onChanged(int r6, int r72, Object obj) {
        int r32;
        if (this.mLastEventType == 3) {
            int r02 = this.mLastEventPosition;
            int r22 = this.mLastEventCount;
            if (r6 <= r02 + r22 && (r32 = r6 + r72) >= r02 && this.mLastEventPayload == obj) {
                this.mLastEventPosition = Math.min(r6, r02);
                this.mLastEventCount = Math.max(r22 + r02, r32) - this.mLastEventPosition;
                return;
            }
        }
        dispatchLastEvent();
        this.mLastEventPosition = r6;
        this.mLastEventCount = r72;
        this.mLastEventPayload = obj;
        this.mLastEventType = 3;
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onInserted(int r52, int r6) {
        int r02;
        if (this.mLastEventType == 1 && r52 >= (r02 = this.mLastEventPosition)) {
            int r22 = this.mLastEventCount;
            if (r52 <= r02 + r22) {
                this.mLastEventCount = r22 + r6;
                this.mLastEventPosition = Math.min(r52, r02);
                return;
            }
        }
        dispatchLastEvent();
        this.mLastEventPosition = r52;
        this.mLastEventCount = r6;
        this.mLastEventType = 1;
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onMoved(int r22, int r32) {
        dispatchLastEvent();
        this.mWrapped.onMoved(r22, r32);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onRemoved(int r42, int r52) {
        int r02;
        if (this.mLastEventType == 2 && (r02 = this.mLastEventPosition) >= r42 && r02 <= r42 + r52) {
            this.mLastEventCount += r52;
            this.mLastEventPosition = r42;
        } else {
            dispatchLastEvent();
            this.mLastEventPosition = r42;
            this.mLastEventCount = r52;
            this.mLastEventType = 2;
        }
    }
}
