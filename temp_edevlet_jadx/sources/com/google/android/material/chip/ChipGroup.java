package com.google.android.material.chip;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import androidx.annotation.BoolRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.internal.FlowLayout;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class ChipGroup extends FlowLayout {
    private static final int DEF_STYLE_RES = R.style.Widget_MaterialComponents_ChipGroup;

    @IdRes
    private int checkedId;
    private final CheckedStateTracker checkedStateTracker;

    @Dimension
    private int chipSpacingHorizontal;

    @Dimension
    private int chipSpacingVertical;

    @Nullable
    private OnCheckedChangeListener onCheckedChangeListener;

    @NonNull
    private PassThroughHierarchyChangeListener passThroughListener;
    private boolean protectFromCheckedChange;
    private boolean selectionRequired;
    private boolean singleSelection;

    public class CheckedStateTracker implements CompoundButton.OnCheckedChangeListener {
        private CheckedStateTracker() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(@NonNull CompoundButton compoundButton, boolean z10) {
            if (ChipGroup.this.protectFromCheckedChange) {
                return;
            }
            if (ChipGroup.this.getCheckedChipIds().isEmpty() && ChipGroup.this.selectionRequired) {
                ChipGroup.this.setCheckedStateForView(compoundButton.getId(), true);
                ChipGroup.this.setCheckedId(compoundButton.getId(), false);
                return;
            }
            int id2 = compoundButton.getId();
            if (!z10) {
                if (ChipGroup.this.checkedId == id2) {
                    ChipGroup.this.setCheckedId(-1);
                }
            } else {
                if (ChipGroup.this.checkedId != -1 && ChipGroup.this.checkedId != id2 && ChipGroup.this.singleSelection) {
                    ChipGroup chipGroup = ChipGroup.this;
                    chipGroup.setCheckedStateForView(chipGroup.checkedId, false);
                }
                ChipGroup.this.setCheckedId(id2);
            }
        }
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public LayoutParams(int r12, int r22) {
            super(r12, r22);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    public interface OnCheckedChangeListener {
        void onCheckedChanged(ChipGroup chipGroup, @IdRes int r22);
    }

    public class PassThroughHierarchyChangeListener implements ViewGroup.OnHierarchyChangeListener {
        private ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener;

        private PassThroughHierarchyChangeListener() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                if (view2.getId() == -1) {
                    view2.setId(ViewCompat.generateViewId());
                }
                Chip chip = (Chip) view2;
                if (chip.isChecked()) {
                    ((ChipGroup) view).check(chip.getId());
                }
                chip.setOnCheckedChangeListenerInternal(ChipGroup.this.checkedStateTracker);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.onHierarchyChangeListener;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                ((Chip) view2).setOnCheckedChangeListenerInternal(null);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.onHierarchyChangeListener;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    public ChipGroup(Context context) {
        this(context, null);
    }

    public ChipGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.chipGroupStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ChipGroup(Context context, AttributeSet attributeSet, int r10) {
        int r42 = DEF_STYLE_RES;
        super(MaterialThemeOverlay.wrap(context, attributeSet, r10, r42), attributeSet, r10);
        this.checkedStateTracker = new CheckedStateTracker();
        this.passThroughListener = new PassThroughHierarchyChangeListener();
        this.checkedId = -1;
        this.protectFromCheckedChange = false;
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(getContext(), attributeSet, R.styleable.ChipGroup, r10, r42, new int[0]);
        int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.ChipGroup_chipSpacing, 0);
        setChipSpacingHorizontal(typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.ChipGroup_chipSpacingHorizontal, dimensionPixelOffset));
        setChipSpacingVertical(typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.ChipGroup_chipSpacingVertical, dimensionPixelOffset));
        setSingleLine(typedArrayObtainStyledAttributes.getBoolean(R.styleable.ChipGroup_singleLine, false));
        setSingleSelection(typedArrayObtainStyledAttributes.getBoolean(R.styleable.ChipGroup_singleSelection, false));
        setSelectionRequired(typedArrayObtainStyledAttributes.getBoolean(R.styleable.ChipGroup_selectionRequired, false));
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.ChipGroup_checkedChip, -1);
        if (resourceId != -1) {
            this.checkedId = resourceId;
        }
        typedArrayObtainStyledAttributes.recycle();
        super.setOnHierarchyChangeListener(this.passThroughListener);
        ViewCompat.setImportantForAccessibility(this, 1);
    }

    private int getChipCount() {
        int r12 = 0;
        for (int r02 = 0; r02 < getChildCount(); r02++) {
            if (getChildAt(r02) instanceof Chip) {
                r12++;
            }
        }
        return r12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCheckedId(int r22) {
        setCheckedId(r22, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCheckedId(int r32, boolean z10) {
        this.checkedId = r32;
        OnCheckedChangeListener onCheckedChangeListener = this.onCheckedChangeListener;
        if (onCheckedChangeListener != null && this.singleSelection && z10) {
            onCheckedChangeListener.onCheckedChanged(this, r32);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCheckedStateForView(@IdRes int r22, boolean z10) {
        View viewFindViewById = findViewById(r22);
        if (viewFindViewById instanceof Chip) {
            this.protectFromCheckedChange = true;
            ((Chip) viewFindViewById).setChecked(z10);
            this.protectFromCheckedChange = false;
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int r52, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof Chip) {
            Chip chip = (Chip) view;
            if (chip.isChecked()) {
                int r12 = this.checkedId;
                if (r12 != -1 && this.singleSelection) {
                    setCheckedStateForView(r12, false);
                }
                setCheckedId(chip.getId());
            }
        }
        super.addView(view, r52, layoutParams);
    }

    public void check(@IdRes int r42) {
        int r02 = this.checkedId;
        if (r42 == r02) {
            return;
        }
        if (r02 != -1 && this.singleSelection) {
            setCheckedStateForView(r02, false);
        }
        if (r42 != -1) {
            setCheckedStateForView(r42, true);
        }
        setCheckedId(r42);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof LayoutParams);
    }

    public void clearCheck() {
        this.protectFromCheckedChange = true;
        for (int r12 = 0; r12 < getChildCount(); r12++) {
            View childAt = getChildAt(r12);
            if (childAt instanceof Chip) {
                ((Chip) childAt).setChecked(false);
            }
        }
        this.protectFromCheckedChange = false;
        setCheckedId(-1);
    }

    @Override // android.view.ViewGroup
    @NonNull
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    @NonNull
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    @NonNull
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @IdRes
    public int getCheckedChipId() {
        if (this.singleSelection) {
            return this.checkedId;
        }
        return -1;
    }

    @NonNull
    public List<Integer> getCheckedChipIds() {
        ArrayList arrayList = new ArrayList();
        for (int r12 = 0; r12 < getChildCount(); r12++) {
            View childAt = getChildAt(r12);
            if ((childAt instanceof Chip) && ((Chip) childAt).isChecked()) {
                arrayList.add(Integer.valueOf(childAt.getId()));
                if (this.singleSelection) {
                    return arrayList;
                }
            }
        }
        return arrayList;
    }

    @Dimension
    public int getChipSpacingHorizontal() {
        return this.chipSpacingHorizontal;
    }

    @Dimension
    public int getChipSpacingVertical() {
        return this.chipSpacingVertical;
    }

    public int getIndexOfChip(@Nullable View view) {
        if (!(view instanceof Chip)) {
            return -1;
        }
        int r22 = 0;
        for (int r02 = 0; r02 < getChildCount(); r02++) {
            if (getChildAt(r02) instanceof Chip) {
                if (((Chip) getChildAt(r02)) == view) {
                    return r22;
                }
                r22++;
            }
        }
        return -1;
    }

    public boolean isSelectionRequired() {
        return this.selectionRequired;
    }

    @Override // com.google.android.material.internal.FlowLayout
    public boolean isSingleLine() {
        return super.isSingleLine();
    }

    public boolean isSingleSelection() {
        return this.singleSelection;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        int r02 = this.checkedId;
        if (r02 != -1) {
            setCheckedStateForView(r02, true);
            setCheckedId(this.checkedId);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(getRowCount(), isSingleLine() ? getChipCount() : -1, false, isSingleSelection() ? 1 : 2));
    }

    public void setChipSpacing(@Dimension int r12) {
        setChipSpacingHorizontal(r12);
        setChipSpacingVertical(r12);
    }

    public void setChipSpacingHorizontal(@Dimension int r22) {
        if (this.chipSpacingHorizontal != r22) {
            this.chipSpacingHorizontal = r22;
            setItemSpacing(r22);
            requestLayout();
        }
    }

    public void setChipSpacingHorizontalResource(@DimenRes int r22) {
        setChipSpacingHorizontal(getResources().getDimensionPixelOffset(r22));
    }

    public void setChipSpacingResource(@DimenRes int r22) {
        setChipSpacing(getResources().getDimensionPixelOffset(r22));
    }

    public void setChipSpacingVertical(@Dimension int r22) {
        if (this.chipSpacingVertical != r22) {
            this.chipSpacingVertical = r22;
            setLineSpacing(r22);
            requestLayout();
        }
    }

    public void setChipSpacingVerticalResource(@DimenRes int r22) {
        setChipSpacingVertical(getResources().getDimensionPixelOffset(r22));
    }

    @Deprecated
    public void setDividerDrawableHorizontal(Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setDividerDrawableVertical(@Nullable Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setFlexWrap(int r22) {
        throw new UnsupportedOperationException("Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead.");
    }

    public void setOnCheckedChangeListener(OnCheckedChangeListener onCheckedChangeListener) {
        this.onCheckedChangeListener = onCheckedChangeListener;
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.passThroughListener.onHierarchyChangeListener = onHierarchyChangeListener;
    }

    public void setSelectionRequired(boolean z10) {
        this.selectionRequired = z10;
    }

    @Deprecated
    public void setShowDividerHorizontal(int r22) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setShowDividerVertical(int r22) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    public void setSingleLine(@BoolRes int r22) {
        setSingleLine(getResources().getBoolean(r22));
    }

    @Override // com.google.android.material.internal.FlowLayout
    public void setSingleLine(boolean z10) {
        super.setSingleLine(z10);
    }

    public void setSingleSelection(@BoolRes int r22) {
        setSingleSelection(getResources().getBoolean(r22));
    }

    public void setSingleSelection(boolean z10) {
        if (this.singleSelection != z10) {
            this.singleSelection = z10;
            clearCheck();
        }
    }
}
