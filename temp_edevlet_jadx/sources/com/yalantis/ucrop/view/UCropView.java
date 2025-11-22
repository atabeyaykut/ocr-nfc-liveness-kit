package com.yalantis.ucrop.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import c5.u;
import s8.d;
import s8.e;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes2.dex */
public class UCropView extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public final GestureCropImageView f4492a;

    /* renamed from: b, reason: collision with root package name */
    public final OverlayView f4493b;

    public UCropView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        LayoutInflater.from(context).inflate(R.layout.ucrop_view, (ViewGroup) this, true);
        GestureCropImageView gestureCropImageView = (GestureCropImageView) findViewById(R.id.image_view_crop);
        this.f4492a = gestureCropImageView;
        OverlayView overlayView = (OverlayView) findViewById(R.id.view_overlay);
        this.f4493b = overlayView;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, u.f2021k);
        overlayView.getClass();
        overlayView.f4481m = typedArrayObtainStyledAttributes.getBoolean(2, false);
        int color = typedArrayObtainStyledAttributes.getColor(3, overlayView.getResources().getColor(R.color.ucrop_color_default_dimmed));
        overlayView.f4482n = color;
        Paint paint = overlayView.f4484q;
        paint.setColor(color);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(1.0f);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(5, overlayView.getResources().getDimensionPixelSize(R.dimen.ucrop_default_crop_frame_stoke_width));
        int color2 = typedArrayObtainStyledAttributes.getColor(4, overlayView.getResources().getColor(R.color.ucrop_color_default_crop_frame));
        Paint paint2 = overlayView.f4486s;
        paint2.setStrokeWidth(dimensionPixelSize);
        paint2.setColor(color2);
        paint2.setStyle(Paint.Style.STROKE);
        Paint paint3 = overlayView.f4487t;
        paint3.setStrokeWidth(dimensionPixelSize * 3);
        paint3.setColor(color2);
        paint3.setStyle(Paint.Style.STROKE);
        overlayView.f4479k = typedArrayObtainStyledAttributes.getBoolean(10, true);
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(9, overlayView.getResources().getDimensionPixelSize(R.dimen.ucrop_default_crop_grid_stoke_width));
        int color3 = typedArrayObtainStyledAttributes.getColor(6, overlayView.getResources().getColor(R.color.ucrop_color_default_crop_grid));
        Paint paint4 = overlayView.f4485r;
        paint4.setStrokeWidth(dimensionPixelSize2);
        paint4.setColor(color3);
        overlayView.f = typedArrayObtainStyledAttributes.getInt(8, 2);
        overlayView.f4476g = typedArrayObtainStyledAttributes.getInt(7, 2);
        overlayView.f4480l = typedArrayObtainStyledAttributes.getBoolean(11, true);
        gestureCropImageView.getClass();
        float fAbs = Math.abs(typedArrayObtainStyledAttributes.getFloat(0, 0.0f));
        float fAbs2 = Math.abs(typedArrayObtainStyledAttributes.getFloat(1, 0.0f));
        if (fAbs == 0.0f || fAbs2 == 0.0f) {
            gestureCropImageView.f15279t = 0.0f;
        } else {
            gestureCropImageView.f15279t = fAbs / fAbs2;
        }
        typedArrayObtainStyledAttributes.recycle();
        gestureCropImageView.setCropBoundsChangeListener(new d(this));
        overlayView.setOverlayViewChangeListener(new e(this));
    }

    @NonNull
    public GestureCropImageView getCropImageView() {
        return this.f4492a;
    }

    @NonNull
    public OverlayView getOverlayView() {
        return this.f4493b;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }
}
