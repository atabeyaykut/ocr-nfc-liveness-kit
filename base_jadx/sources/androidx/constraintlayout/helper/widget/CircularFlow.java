package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.R;
import androidx.constraintlayout.widget.VirtualLayout;
import java.util.Arrays;

/* loaded from: classes.dex */
public class CircularFlow extends VirtualLayout {
    private static float DEFAULT_ANGLE = 0.0f;
    private static int DEFAULT_RADIUS = 0;
    private static final String TAG = "CircularFlow";
    private float[] mAngles;
    ConstraintLayout mContainer;
    private int mCountAngle;
    private int mCountRadius;
    private int[] mRadius;
    private String mReferenceAngles;
    private Float mReferenceDefaultAngle;
    private Integer mReferenceDefaultRadius;
    private String mReferenceRadius;
    int mViewCenter;

    public CircularFlow(Context context) {
        super(context);
    }

    public CircularFlow(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CircularFlow(Context context, AttributeSet attributeSet, int r32) {
        super(context, attributeSet, r32);
    }

    private void addAngle(String str) {
        float[] fArr;
        if (str == null || str.length() == 0 || this.myContext == null || (fArr = this.mAngles) == null) {
            return;
        }
        if (this.mCountAngle + 1 > fArr.length) {
            this.mAngles = Arrays.copyOf(fArr, fArr.length + 1);
        }
        this.mAngles[this.mCountAngle] = Integer.parseInt(str);
        this.mCountAngle++;
    }

    private void addRadius(String str) {
        int[] r02;
        if (str == null || str.length() == 0 || this.myContext == null || (r02 = this.mRadius) == null) {
            return;
        }
        if (this.mCountRadius + 1 > r02.length) {
            this.mRadius = Arrays.copyOf(r02, r02.length + 1);
        }
        this.mRadius[this.mCountRadius] = (int) (Integer.parseInt(str) * this.myContext.getResources().getDisplayMetrics().density);
        this.mCountRadius++;
    }

    private void anchorReferences() {
        this.mContainer = (ConstraintLayout) getParent();
        for (int r02 = 0; r02 < this.mCount; r02++) {
            View viewById = this.mContainer.getViewById(this.mIds[r02]);
            if (viewById != null) {
                int r22 = DEFAULT_RADIUS;
                float f = DEFAULT_ANGLE;
                int[] r42 = this.mRadius;
                if (r42 == null || r02 >= r42.length) {
                    Integer num = this.mReferenceDefaultRadius;
                    if (num == null || num.intValue() == -1) {
                        Log.e(TAG, "Added radius to view with id: " + this.mMap.get(Integer.valueOf(viewById.getId())));
                    } else {
                        this.mCountRadius++;
                        if (this.mRadius == null) {
                            this.mRadius = new int[1];
                        }
                        int[] radius = getRadius();
                        this.mRadius = radius;
                        radius[this.mCountRadius - 1] = r22;
                    }
                } else {
                    r22 = r42[r02];
                }
                float[] fArr = this.mAngles;
                if (fArr == null || r02 >= fArr.length) {
                    Float f10 = this.mReferenceDefaultAngle;
                    if (f10 == null || f10.floatValue() == -1.0f) {
                        Log.e(TAG, "Added angle to view with id: " + this.mMap.get(Integer.valueOf(viewById.getId())));
                    } else {
                        this.mCountAngle++;
                        if (this.mAngles == null) {
                            this.mAngles = new float[1];
                        }
                        float[] angles = getAngles();
                        this.mAngles = angles;
                        angles[this.mCountAngle - 1] = f;
                    }
                } else {
                    f = fArr[r02];
                }
                ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) viewById.getLayoutParams();
                layoutParams.circleAngle = f;
                layoutParams.circleConstraint = this.mViewCenter;
                layoutParams.circleRadius = r22;
                viewById.setLayoutParams(layoutParams);
            }
        }
        applyLayoutFeatures();
    }

    private float[] removeAngle(float[] fArr, int r32) {
        return (fArr == null || r32 < 0 || r32 >= this.mCountAngle) ? fArr : removeElementFromArray(fArr, r32);
    }

    public static float[] removeElementFromArray(float[] fArr, int r6) {
        float[] fArr2 = new float[fArr.length - 1];
        int r22 = 0;
        for (int r12 = 0; r12 < fArr.length; r12++) {
            if (r12 != r6) {
                fArr2[r22] = fArr[r12];
                r22++;
            }
        }
        return fArr2;
    }

    public static int[] removeElementFromArray(int[] r52, int r6) {
        int[] r02 = new int[r52.length - 1];
        int r22 = 0;
        for (int r12 = 0; r12 < r52.length; r12++) {
            if (r12 != r6) {
                r02[r22] = r52[r12];
                r22++;
            }
        }
        return r02;
    }

    private int[] removeRadius(int[] r22, int r32) {
        return (r22 == null || r32 < 0 || r32 >= this.mCountRadius) ? r22 : removeElementFromArray(r22, r32);
    }

    private void setAngles(String str) {
        if (str == null) {
            return;
        }
        int r02 = 0;
        this.mCountAngle = 0;
        while (true) {
            int r12 = str.indexOf(44, r02);
            if (r12 == -1) {
                addAngle(str.substring(r02).trim());
                return;
            } else {
                addAngle(str.substring(r02, r12).trim());
                r02 = r12 + 1;
            }
        }
    }

    private void setRadius(String str) {
        if (str == null) {
            return;
        }
        int r02 = 0;
        this.mCountRadius = 0;
        while (true) {
            int r12 = str.indexOf(44, r02);
            if (r12 == -1) {
                addRadius(str.substring(r02).trim());
                return;
            } else {
                addRadius(str.substring(r02, r12).trim());
                r02 = r12 + 1;
            }
        }
    }

    public void addViewToCircularFlow(View view, int r32, float f) {
        if (containsId(view.getId())) {
            return;
        }
        addView(view);
        this.mCountAngle++;
        float[] angles = getAngles();
        this.mAngles = angles;
        angles[this.mCountAngle - 1] = f;
        this.mCountRadius++;
        int[] radius = getRadius();
        this.mRadius = radius;
        radius[this.mCountRadius - 1] = (int) (r32 * this.myContext.getResources().getDisplayMetrics().density);
        anchorReferences();
    }

    public float[] getAngles() {
        return Arrays.copyOf(this.mAngles, this.mCountAngle);
    }

    public int[] getRadius() {
        return Arrays.copyOf(this.mRadius, this.mCountRadius);
    }

    @Override // androidx.constraintlayout.widget.VirtualLayout, androidx.constraintlayout.widget.ConstraintHelper
    public void init(AttributeSet attributeSet) {
        super.init(attributeSet);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int r22 = 0; r22 < indexCount; r22++) {
                int index = typedArrayObtainStyledAttributes.getIndex(r22);
                if (index == R.styleable.ConstraintLayout_Layout_circularflow_viewCenter) {
                    this.mViewCenter = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                } else if (index == R.styleable.ConstraintLayout_Layout_circularflow_angles) {
                    String string = typedArrayObtainStyledAttributes.getString(index);
                    this.mReferenceAngles = string;
                    setAngles(string);
                } else if (index == R.styleable.ConstraintLayout_Layout_circularflow_radiusInDP) {
                    String string2 = typedArrayObtainStyledAttributes.getString(index);
                    this.mReferenceRadius = string2;
                    setRadius(string2);
                } else if (index == R.styleable.ConstraintLayout_Layout_circularflow_defaultAngle) {
                    Float fValueOf = Float.valueOf(typedArrayObtainStyledAttributes.getFloat(index, DEFAULT_ANGLE));
                    this.mReferenceDefaultAngle = fValueOf;
                    setDefaultAngle(fValueOf.floatValue());
                } else if (index == R.styleable.ConstraintLayout_Layout_circularflow_defaultRadius) {
                    Integer numValueOf = Integer.valueOf(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, DEFAULT_RADIUS));
                    this.mReferenceDefaultRadius = numValueOf;
                    setDefaultRadius(numValueOf.intValue());
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public boolean isUpdatable(View view) {
        return containsId(view.getId()) && indexFromId(view.getId()) != -1;
    }

    @Override // androidx.constraintlayout.widget.VirtualLayout, androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.mReferenceAngles;
        if (str != null) {
            this.mAngles = new float[1];
            setAngles(str);
        }
        String str2 = this.mReferenceRadius;
        if (str2 != null) {
            this.mRadius = new int[1];
            setRadius(str2);
        }
        Float f = this.mReferenceDefaultAngle;
        if (f != null) {
            setDefaultAngle(f.floatValue());
        }
        Integer num = this.mReferenceDefaultRadius;
        if (num != null) {
            setDefaultRadius(num.intValue());
        }
        anchorReferences();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public int removeView(View view) {
        int r02 = super.removeView(view);
        if (r02 == -1) {
            return r02;
        }
        ConstraintSet constraintSet = new ConstraintSet();
        constraintSet.clone(this.mContainer);
        constraintSet.clear(view.getId(), 8);
        constraintSet.applyTo(this.mContainer);
        float[] fArr = this.mAngles;
        if (r02 < fArr.length) {
            this.mAngles = removeAngle(fArr, r02);
            this.mCountAngle--;
        }
        int[] r42 = this.mRadius;
        if (r02 < r42.length) {
            this.mRadius = removeRadius(r42, r02);
            this.mCountRadius--;
        }
        anchorReferences();
        return r02;
    }

    public void setDefaultAngle(float f) {
        DEFAULT_ANGLE = f;
    }

    public void setDefaultRadius(int r12) {
        DEFAULT_RADIUS = r12;
    }

    public void updateAngle(View view, float f) {
        if (!isUpdatable(view)) {
            Log.e(TAG, "It was not possible to update angle to view with id: " + view.getId());
            return;
        }
        int r22 = indexFromId(view.getId());
        if (r22 > this.mAngles.length) {
            return;
        }
        float[] angles = getAngles();
        this.mAngles = angles;
        angles[r22] = f;
        anchorReferences();
    }

    public void updateRadius(View view, int r42) {
        if (!isUpdatable(view)) {
            Log.e(TAG, "It was not possible to update radius to view with id: " + view.getId());
            return;
        }
        int r32 = indexFromId(view.getId());
        if (r32 > this.mRadius.length) {
            return;
        }
        int[] radius = getRadius();
        this.mRadius = radius;
        radius[r32] = (int) (r42 * this.myContext.getResources().getDisplayMetrics().density);
        anchorReferences();
    }

    public void updateReference(View view, int r32, float f) {
        if (!isUpdatable(view)) {
            Log.e(TAG, "It was not possible to update radius and angle to view with id: " + view.getId());
            return;
        }
        int r22 = indexFromId(view.getId());
        if (getAngles().length > r22) {
            float[] angles = getAngles();
            this.mAngles = angles;
            angles[r22] = f;
        }
        if (getRadius().length > r22) {
            int[] radius = getRadius();
            this.mRadius = radius;
            radius[r22] = (int) (r32 * this.myContext.getResources().getDisplayMetrics().density);
        }
        anchorReferences();
    }
}
