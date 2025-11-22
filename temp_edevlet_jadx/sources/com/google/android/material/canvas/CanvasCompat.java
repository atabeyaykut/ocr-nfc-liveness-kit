package com.google.android.material.canvas;

import android.graphics.Canvas;
import android.graphics.RectF;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class CanvasCompat {
    private CanvasCompat() {
    }

    public static int saveLayerAlpha(@NonNull Canvas canvas, float f, float f10, float f11, float f12, int r12) {
        return Build.VERSION.SDK_INT > 21 ? canvas.saveLayerAlpha(f, f10, f11, f12, r12) : canvas.saveLayerAlpha(f, f10, f11, f12, r12, 31);
    }

    public static int saveLayerAlpha(@NonNull Canvas canvas, @Nullable RectF rectF, int r42) {
        return Build.VERSION.SDK_INT > 21 ? canvas.saveLayerAlpha(rectF, r42) : canvas.saveLayerAlpha(rectF, r42, 31);
    }
}
