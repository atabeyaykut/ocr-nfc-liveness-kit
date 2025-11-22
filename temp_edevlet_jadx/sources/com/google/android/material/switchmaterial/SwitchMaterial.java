package com.google.android.material.switchmaterial;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.SwitchCompat;
import com.google.android.material.R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.elevation.ElevationOverlayProvider;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;

/* loaded from: classes2.dex */
public class SwitchMaterial extends SwitchCompat {
    private static final int DEF_STYLE_RES = R.style.Widget_MaterialComponents_CompoundButton_Switch;
    private static final int[][] ENABLED_CHECKED_STATES = {new int[]{android.R.attr.state_enabled, android.R.attr.state_checked}, new int[]{android.R.attr.state_enabled, -16842912}, new int[]{-16842910, android.R.attr.state_checked}, new int[]{-16842910, -16842912}};

    @NonNull
    private final ElevationOverlayProvider elevationOverlayProvider;

    @Nullable
    private ColorStateList materialThemeColorsThumbTintList;

    @Nullable
    private ColorStateList materialThemeColorsTrackTintList;
    private boolean useMaterialThemeColors;

    public SwitchMaterial(@NonNull Context context) {
        this(context, null);
    }

    public SwitchMaterial(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.switchStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public SwitchMaterial(@NonNull Context context, @Nullable AttributeSet attributeSet, int r92) {
        int r42 = DEF_STYLE_RES;
        super(MaterialThemeOverlay.wrap(context, attributeSet, r92, r42), attributeSet, r92);
        Context context2 = getContext();
        this.elevationOverlayProvider = new ElevationOverlayProvider(context2);
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, R.styleable.SwitchMaterial, r92, r42, new int[0]);
        this.useMaterialThemeColors = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SwitchMaterial_useMaterialThemeColors, false);
        typedArrayObtainStyledAttributes.recycle();
    }

    private ColorStateList getMaterialThemeColorsThumbTintList() throws Resources.NotFoundException {
        if (this.materialThemeColorsThumbTintList == null) {
            int color = MaterialColors.getColor(this, R.attr.colorSurface);
            int color2 = MaterialColors.getColor(this, R.attr.colorControlActivated);
            float dimension = getResources().getDimension(R.dimen.mtrl_switch_thumb_elevation);
            if (this.elevationOverlayProvider.isThemeElevationOverlayEnabled()) {
                dimension += ViewUtils.getParentAbsoluteElevation(this);
            }
            int r22 = this.elevationOverlayProvider.compositeOverlayIfNeeded(color, dimension);
            int[][] r32 = ENABLED_CHECKED_STATES;
            int[] r42 = new int[r32.length];
            r42[0] = MaterialColors.layer(color, color2, 1.0f);
            r42[1] = r22;
            r42[2] = MaterialColors.layer(color, color2, 0.38f);
            r42[3] = r22;
            this.materialThemeColorsThumbTintList = new ColorStateList(r32, r42);
        }
        return this.materialThemeColorsThumbTintList;
    }

    private ColorStateList getMaterialThemeColorsTrackTintList() {
        if (this.materialThemeColorsTrackTintList == null) {
            int[][] r02 = ENABLED_CHECKED_STATES;
            int[] r12 = new int[r02.length];
            int color = MaterialColors.getColor(this, R.attr.colorSurface);
            int color2 = MaterialColors.getColor(this, R.attr.colorControlActivated);
            int color3 = MaterialColors.getColor(this, R.attr.colorOnSurface);
            r12[0] = MaterialColors.layer(color, color2, 0.54f);
            r12[1] = MaterialColors.layer(color, color3, 0.32f);
            r12[2] = MaterialColors.layer(color, color2, 0.12f);
            r12[3] = MaterialColors.layer(color, color3, 0.12f);
            this.materialThemeColorsTrackTintList = new ColorStateList(r02, r12);
        }
        return this.materialThemeColorsTrackTintList;
    }

    public boolean isUseMaterialThemeColors() {
        return this.useMaterialThemeColors;
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.useMaterialThemeColors && getThumbTintList() == null) {
            setThumbTintList(getMaterialThemeColorsThumbTintList());
        }
        if (this.useMaterialThemeColors && getTrackTintList() == null) {
            setTrackTintList(getMaterialThemeColorsTrackTintList());
        }
    }

    public void setUseMaterialThemeColors(boolean z10) {
        ColorStateList materialThemeColorsTrackTintList;
        this.useMaterialThemeColors = z10;
        if (z10) {
            setThumbTintList(getMaterialThemeColorsThumbTintList());
            materialThemeColorsTrackTintList = getMaterialThemeColorsTrackTintList();
        } else {
            materialThemeColorsTrackTintList = null;
            setThumbTintList(null);
        }
        setTrackTintList(materialThemeColorsTrackTintList);
    }
}
