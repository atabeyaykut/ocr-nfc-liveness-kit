package androidx.appcompat.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.R;
import androidx.core.widget.PopupWindowCompat;

/* loaded from: classes.dex */
class AppCompatPopupWindow extends PopupWindow {
    private static final boolean COMPAT_OVERLAP_ANCHOR = false;
    private boolean mOverlapAnchor;

    public AppCompatPopupWindow(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int r42) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        super(context, attributeSet, r42);
        init(context, attributeSet, r42, 0);
    }

    public AppCompatPopupWindow(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int r32, @StyleRes int r42) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        super(context, attributeSet, r32, r42);
        init(context, attributeSet, r32, r42);
    }

    private void init(Context context, AttributeSet attributeSet, int r42, int r52) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, R.styleable.PopupWindow, r42, r52);
        int r32 = R.styleable.PopupWindow_overlapAnchor;
        if (tintTypedArrayObtainStyledAttributes.hasValue(r32)) {
            setSupportOverlapAnchor(tintTypedArrayObtainStyledAttributes.getBoolean(r32, false));
        }
        setBackgroundDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(R.styleable.PopupWindow_android_popupBackground));
        tintTypedArrayObtainStyledAttributes.recycle();
    }

    private void setSupportOverlapAnchor(boolean z10) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        if (COMPAT_OVERLAP_ANCHOR) {
            this.mOverlapAnchor = z10;
        } else {
            PopupWindowCompat.setOverlapAnchor(this, z10);
        }
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int r32, int r42) {
        if (COMPAT_OVERLAP_ANCHOR && this.mOverlapAnchor) {
            r42 -= view.getHeight();
        }
        super.showAsDropDown(view, r32, r42);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int r32, int r42, int r52) {
        if (COMPAT_OVERLAP_ANCHOR && this.mOverlapAnchor) {
            r42 -= view.getHeight();
        }
        super.showAsDropDown(view, r32, r42, r52);
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int r82, int r92, int r10, int r11) {
        if (COMPAT_OVERLAP_ANCHOR && this.mOverlapAnchor) {
            r92 -= view.getHeight();
        }
        super.update(view, r82, r92, r10, r11);
    }
}
