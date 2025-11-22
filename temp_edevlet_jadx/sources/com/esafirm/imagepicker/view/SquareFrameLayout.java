package com.esafirm.imagepicker.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import kotlin.Metadata;
import kotlin.jvm.internal.h;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/esafirm/imagepicker/view/SquareFrameLayout;", "Landroid/widget/FrameLayout;", "imagepicker_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes.dex */
public final class SquareFrameLayout extends FrameLayout {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SquareFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        h.f(context, "context");
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int r12, int r22) {
        super.onMeasure(r12, r12);
    }
}
