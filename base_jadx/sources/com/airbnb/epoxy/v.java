package com.airbnb.epoxy;

import android.view.ViewParent;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Px;
import com.airbnb.epoxy.s;
import java.util.List;

/* loaded from: classes.dex */
public abstract class v<T extends s> extends u<T> {
    public v() {
    }

    public v(long j10) {
        super(j10);
    }

    @Override // com.airbnb.epoxy.u
    public void bind(@NonNull T t10) {
        super.bind((v<T>) t10);
    }

    public void bind(@NonNull T t10, @NonNull u<?> uVar) {
        super.bind((v<T>) t10, uVar);
    }

    public void bind(@NonNull T t10, @NonNull List<Object> list) {
        super.bind((v<T>) t10, list);
    }

    @Override // com.airbnb.epoxy.u
    public /* bridge */ /* synthetic */ void bind(@NonNull Object obj, @NonNull u uVar) {
        bind((v<T>) obj, (u<?>) uVar);
    }

    @Override // com.airbnb.epoxy.u
    public /* bridge */ /* synthetic */ void bind(@NonNull Object obj, @NonNull List list) {
        bind((v<T>) obj, (List<Object>) list);
    }

    public abstract T createNewHolder(@NonNull ViewParent viewParent);

    @Override // com.airbnb.epoxy.u
    public boolean onFailedToRecycleView(T t10) {
        return super.onFailedToRecycleView((v<T>) t10);
    }

    @Override // com.airbnb.epoxy.u
    public void onViewAttachedToWindow(T t10) {
        super.onViewAttachedToWindow((v<T>) t10);
    }

    @Override // com.airbnb.epoxy.u
    public void onViewDetachedFromWindow(T t10) {
        super.onViewDetachedFromWindow((v<T>) t10);
    }

    @Override // com.airbnb.epoxy.u
    public void onVisibilityChanged(@FloatRange(from = 0.0d, to = 100.0d) float f, @FloatRange(from = 0.0d, to = 100.0d) float f10, @Px int r32, @Px int r42, @NonNull T t10) {
        super.onVisibilityChanged(f, f10, r32, r42, (int) t10);
    }

    @Override // com.airbnb.epoxy.u
    public void onVisibilityStateChanged(int r12, @NonNull T t10) {
        super.onVisibilityStateChanged(r12, (int) t10);
    }

    @Override // com.airbnb.epoxy.u
    public void unbind(@NonNull T t10) {
        super.unbind((v<T>) t10);
    }
}
