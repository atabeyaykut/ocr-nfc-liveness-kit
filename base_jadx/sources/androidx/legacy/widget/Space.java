package androidx.legacy.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@Deprecated
/* loaded from: classes.dex */
public class Space extends View {
    @Deprecated
    public Space(@NonNull Context context) {
        this(context, null);
    }

    @Deprecated
    public Space(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Deprecated
    public Space(@NonNull Context context, @Nullable AttributeSet attributeSet, int r32) {
        super(context, attributeSet, r32);
        if (getVisibility() == 0) {
            setVisibility(4);
        }
    }

    private static int getDefaultSize2(int r22, int r32) {
        int mode = View.MeasureSpec.getMode(r32);
        int size = View.MeasureSpec.getSize(r32);
        return mode != Integer.MIN_VALUE ? mode != 1073741824 ? r22 : size : Math.min(r22, size);
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    @Deprecated
    public void draw(Canvas canvas) {
    }

    @Override // android.view.View
    @Deprecated
    public void onMeasure(int r22, int r32) {
        setMeasuredDimension(getDefaultSize2(getSuggestedMinimumWidth(), r22), getDefaultSize2(getSuggestedMinimumHeight(), r32));
    }
}
