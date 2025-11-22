package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Helper;
import androidx.constraintlayout.core.widgets.HelperWidget;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.R;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: classes.dex */
public abstract class ConstraintHelper extends View {
    protected int mCount;
    protected Helper mHelperWidget;
    protected int[] mIds;
    protected HashMap<Integer, String> mMap;
    protected String mReferenceIds;
    protected String mReferenceTags;
    protected boolean mUseViewMeasure;
    private View[] mViews;
    protected Context myContext;

    public ConstraintHelper(Context context) {
        super(context);
        this.mIds = new int[32];
        this.mUseViewMeasure = false;
        this.mViews = null;
        this.mMap = new HashMap<>();
        this.myContext = context;
        init(null);
    }

    public ConstraintHelper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mIds = new int[32];
        this.mUseViewMeasure = false;
        this.mViews = null;
        this.mMap = new HashMap<>();
        this.myContext = context;
        init(attributeSet);
    }

    public ConstraintHelper(Context context, AttributeSet attributeSet, int r32) {
        super(context, attributeSet, r32);
        this.mIds = new int[32];
        this.mUseViewMeasure = false;
        this.mViews = null;
        this.mMap = new HashMap<>();
        this.myContext = context;
        init(attributeSet);
    }

    private void addID(String str) throws IllegalAccessException, Resources.NotFoundException, IllegalArgumentException {
        if (str == null || str.length() == 0 || this.myContext == null) {
            return;
        }
        String strTrim = str.trim();
        if (getParent() instanceof ConstraintLayout) {
        }
        int r02 = findId(strTrim);
        if (r02 != 0) {
            this.mMap.put(Integer.valueOf(r02), strTrim);
            addRscID(r02);
        } else {
            Log.w("ConstraintHelper", "Could not find id of \"" + strTrim + "\"");
        }
    }

    private void addRscID(int r42) {
        if (r42 == getId()) {
            return;
        }
        int r02 = this.mCount + 1;
        int[] r12 = this.mIds;
        if (r02 > r12.length) {
            this.mIds = Arrays.copyOf(r12, r12.length * 2);
        }
        int[] r03 = this.mIds;
        int r13 = this.mCount;
        r03[r13] = r42;
        this.mCount = r13 + 1;
    }

    private void addTag(String str) {
        if (str == null || str.length() == 0 || this.myContext == null) {
            return;
        }
        String strTrim = str.trim();
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        if (constraintLayout == null) {
            Log.w("ConstraintHelper", "Parent not a ConstraintLayout");
            return;
        }
        int childCount = constraintLayout.getChildCount();
        for (int r32 = 0; r32 < childCount; r32++) {
            View childAt = constraintLayout.getChildAt(r32);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            if ((layoutParams instanceof ConstraintLayout.LayoutParams) && strTrim.equals(((ConstraintLayout.LayoutParams) layoutParams).constraintTag)) {
                if (childAt.getId() == -1) {
                    Log.w("ConstraintHelper", "to use ConstraintTag view " + childAt.getClass().getSimpleName() + " must have an ID");
                } else {
                    addRscID(childAt.getId());
                }
            }
        }
    }

    private int[] convertReferenceString(View view, String str) throws IllegalAccessException, Resources.NotFoundException, IllegalArgumentException {
        String[] strArrSplit = str.split(",");
        view.getContext();
        int[] r52 = new int[strArrSplit.length];
        int r12 = 0;
        for (String str2 : strArrSplit) {
            int r22 = findId(str2.trim());
            if (r22 != 0) {
                r52[r12] = r22;
                r12++;
            }
        }
        return r12 != strArrSplit.length ? Arrays.copyOf(r52, r12) : r52;
    }

    private int findId(ConstraintLayout constraintLayout, String str) throws Resources.NotFoundException {
        Resources resources;
        String resourceEntryName;
        if (str == null || constraintLayout == null || (resources = this.myContext.getResources()) == null) {
            return 0;
        }
        int childCount = constraintLayout.getChildCount();
        for (int r32 = 0; r32 < childCount; r32++) {
            View childAt = constraintLayout.getChildAt(r32);
            if (childAt.getId() != -1) {
                try {
                    resourceEntryName = resources.getResourceEntryName(childAt.getId());
                } catch (Resources.NotFoundException unused) {
                    resourceEntryName = null;
                }
                if (str.equals(resourceEntryName)) {
                    return childAt.getId();
                }
            }
        }
        return 0;
    }

    private int findId(String str) throws IllegalAccessException, Resources.NotFoundException, IllegalArgumentException {
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        int r32 = 0;
        if (isInEditMode() && constraintLayout != null) {
            Object designInformation = constraintLayout.getDesignInformation(0, str);
            if (designInformation instanceof Integer) {
                r32 = ((Integer) designInformation).intValue();
            }
        }
        if (r32 == 0 && constraintLayout != null) {
            r32 = findId(constraintLayout, str);
        }
        if (r32 == 0) {
            try {
                r32 = R.id.class.getField(str).getInt(null);
            } catch (Exception unused) {
            }
        }
        return r32 == 0 ? this.myContext.getResources().getIdentifier(str, "id", this.myContext.getPackageName()) : r32;
    }

    public void addView(View view) {
        if (view == this) {
            return;
        }
        if (view.getId() == -1) {
            Log.e("ConstraintHelper", "Views added to a ConstraintHelper need to have an id");
        } else {
            if (view.getParent() == null) {
                Log.e("ConstraintHelper", "Views added to a ConstraintHelper need to have a parent");
                return;
            }
            this.mReferenceIds = null;
            addRscID(view.getId());
            requestLayout();
        }
    }

    public void applyLayoutFeatures() {
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ConstraintLayout)) {
            return;
        }
        applyLayoutFeatures((ConstraintLayout) parent);
    }

    public void applyLayoutFeatures(ConstraintLayout constraintLayout) {
        int visibility = getVisibility();
        float elevation = getElevation();
        for (int r22 = 0; r22 < this.mCount; r22++) {
            View viewById = constraintLayout.getViewById(this.mIds[r22]);
            if (viewById != null) {
                viewById.setVisibility(visibility);
                if (elevation > 0.0f) {
                    viewById.setTranslationZ(viewById.getTranslationZ() + elevation);
                }
            }
        }
    }

    public void applyLayoutFeaturesInConstraintSet(ConstraintLayout constraintLayout) {
    }

    public boolean containsId(int r6) {
        for (int r02 : this.mIds) {
            if (r02 == r6) {
                return true;
            }
        }
        return false;
    }

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.mIds, this.mCount);
    }

    public View[] getViews(ConstraintLayout constraintLayout) {
        View[] viewArr = this.mViews;
        if (viewArr == null || viewArr.length != this.mCount) {
            this.mViews = new View[this.mCount];
        }
        for (int r02 = 0; r02 < this.mCount; r02++) {
            this.mViews[r02] = constraintLayout.getViewById(this.mIds[r02]);
        }
        return this.mViews;
    }

    public int indexFromId(int r6) {
        int r22 = -1;
        for (int r02 : this.mIds) {
            r22++;
            if (r02 == r6) {
                return r22;
            }
        }
        return r22;
    }

    public void init(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int r12 = 0; r12 < indexCount; r12++) {
                int index = typedArrayObtainStyledAttributes.getIndex(r12);
                if (index == R.styleable.ConstraintLayout_Layout_constraint_referenced_ids) {
                    String string = typedArrayObtainStyledAttributes.getString(index);
                    this.mReferenceIds = string;
                    setIds(string);
                } else if (index == R.styleable.ConstraintLayout_Layout_constraint_referenced_tags) {
                    String string2 = typedArrayObtainStyledAttributes.getString(index);
                    this.mReferenceTags = string2;
                    setReferenceTags(string2);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public void loadParameters(ConstraintSet.Constraint constraint, HelperWidget helperWidget, ConstraintLayout.LayoutParams layoutParams, SparseArray<ConstraintWidget> sparseArray) {
        ConstraintSet.Layout layout = constraint.layout;
        int[] r02 = layout.mReferenceIds;
        if (r02 != null) {
            setReferencedIds(r02);
        } else {
            String str = layout.mReferenceIdString;
            if (str != null) {
                if (str.length() > 0) {
                    ConstraintSet.Layout layout2 = constraint.layout;
                    layout2.mReferenceIds = convertReferenceString(this, layout2.mReferenceIdString);
                } else {
                    constraint.layout.mReferenceIds = null;
                }
            }
        }
        if (helperWidget == null) {
            return;
        }
        helperWidget.removeAllIds();
        if (constraint.layout.mReferenceIds == null) {
            return;
        }
        int r52 = 0;
        while (true) {
            int[] r03 = constraint.layout.mReferenceIds;
            if (r52 >= r03.length) {
                return;
            }
            ConstraintWidget constraintWidget = sparseArray.get(r03[r52]);
            if (constraintWidget != null) {
                helperWidget.add(constraintWidget);
            }
            r52++;
        }
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.mReferenceIds;
        if (str != null) {
            setIds(str);
        }
        String str2 = this.mReferenceTags;
        if (str2 != null) {
            setReferenceTags(str2);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
    }

    @Override // android.view.View
    public void onMeasure(int r22, int r32) {
        if (this.mUseViewMeasure) {
            super.onMeasure(r22, r32);
        } else {
            setMeasuredDimension(0, 0);
        }
    }

    public int removeView(View view) {
        int r02;
        int id2 = view.getId();
        int r03 = -1;
        if (id2 == -1) {
            return -1;
        }
        this.mReferenceIds = null;
        int r22 = 0;
        while (true) {
            if (r22 >= this.mCount) {
                break;
            }
            if (this.mIds[r22] == id2) {
                int r6 = r22;
                while (true) {
                    r02 = this.mCount;
                    if (r6 >= r02 - 1) {
                        break;
                    }
                    int[] r04 = this.mIds;
                    int r32 = r6 + 1;
                    r04[r6] = r04[r32];
                    r6 = r32;
                }
                this.mIds[r02 - 1] = 0;
                this.mCount = r02 - 1;
                r03 = r22;
            } else {
                r22++;
            }
        }
        requestLayout();
        return r03;
    }

    public void resolveRtl(ConstraintWidget constraintWidget, boolean z10) {
    }

    public void setIds(String str) throws IllegalAccessException, Resources.NotFoundException, IllegalArgumentException {
        this.mReferenceIds = str;
        if (str == null) {
            return;
        }
        int r02 = 0;
        this.mCount = 0;
        while (true) {
            int r12 = str.indexOf(44, r02);
            if (r12 == -1) {
                addID(str.substring(r02));
                return;
            } else {
                addID(str.substring(r02, r12));
                r02 = r12 + 1;
            }
        }
    }

    public void setReferenceTags(String str) {
        this.mReferenceTags = str;
        if (str == null) {
            return;
        }
        int r02 = 0;
        this.mCount = 0;
        while (true) {
            int r12 = str.indexOf(44, r02);
            if (r12 == -1) {
                addTag(str.substring(r02));
                return;
            } else {
                addTag(str.substring(r02, r12));
                r02 = r12 + 1;
            }
        }
    }

    public void setReferencedIds(int[] r32) {
        this.mReferenceIds = null;
        this.mCount = 0;
        for (int r02 : r32) {
            addRscID(r02);
        }
    }

    @Override // android.view.View
    public void setTag(int r12, Object obj) {
        super.setTag(r12, obj);
        if (obj == null && this.mReferenceIds == null) {
            addRscID(r12);
        }
    }

    public void updatePostConstraints(ConstraintLayout constraintLayout) {
    }

    public void updatePostLayout(ConstraintLayout constraintLayout) {
    }

    public void updatePostMeasure(ConstraintLayout constraintLayout) {
    }

    public void updatePreDraw(ConstraintLayout constraintLayout) {
    }

    public void updatePreLayout(ConstraintWidgetContainer constraintWidgetContainer, Helper helper, SparseArray<ConstraintWidget> sparseArray) {
        helper.removeAllIds();
        for (int r22 = 0; r22 < this.mCount; r22++) {
            helper.add(sparseArray.get(this.mIds[r22]));
        }
    }

    public void updatePreLayout(ConstraintLayout constraintLayout) {
        String str;
        int r32;
        if (isInEditMode()) {
            setIds(this.mReferenceIds);
        }
        Helper helper = this.mHelperWidget;
        if (helper == null) {
            return;
        }
        helper.removeAllIds();
        for (int r02 = 0; r02 < this.mCount; r02++) {
            int r12 = this.mIds[r02];
            View viewById = constraintLayout.getViewById(r12);
            if (viewById == null && (r32 = findId(constraintLayout, (str = this.mMap.get(Integer.valueOf(r12))))) != 0) {
                this.mIds[r02] = r32;
                this.mMap.put(Integer.valueOf(r32), str);
                viewById = constraintLayout.getViewById(r32);
            }
            if (viewById != null) {
                this.mHelperWidget.add(constraintLayout.getViewWidget(viewById));
            }
        }
        this.mHelperWidget.updateConstraints(constraintLayout.mLayoutWidget);
    }

    public void validateParams() {
        if (this.mHelperWidget == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.LayoutParams) {
            ((ConstraintLayout.LayoutParams) layoutParams).widget = (ConstraintWidget) this.mHelperWidget;
        }
    }
}
