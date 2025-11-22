package androidx.cardview.widget;

import android.graphics.drawable.Drawable;
import android.view.View;

/* loaded from: classes.dex */
interface CardViewDelegate {
    Drawable getCardBackground();

    View getCardView();

    boolean getPreventCornerOverlap();

    boolean getUseCompatPadding();

    void setCardBackground(Drawable drawable);

    void setMinWidthHeightInternal(int r12, int r22);

    void setShadowPadding(int r12, int r22, int r32, int r42);
}
