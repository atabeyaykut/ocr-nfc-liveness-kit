package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class StateSet {
    private static final boolean DEBUG = false;
    public static final String TAG = "ConstraintLayoutStates";
    ConstraintSet mDefaultConstraintSet;
    int mDefaultState = -1;
    int mCurrentStateId = -1;
    int mCurrentConstraintNumber = -1;
    private SparseArray<State> mStateList = new SparseArray<>();
    private SparseArray<ConstraintSet> mConstraintSetMap = new SparseArray<>();
    private ConstraintsChangedListener mConstraintsChangedListener = null;

    public static class State {
        int mConstraintID;
        int mId;
        boolean mIsLayout;
        ArrayList<Variant> mVariants = new ArrayList<>();

        public State(Context context, XmlPullParser xmlPullParser) throws Resources.NotFoundException {
            this.mConstraintID = -1;
            this.mIsLayout = false;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.State);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int r02 = 0; r02 < indexCount; r02++) {
                int index = typedArrayObtainStyledAttributes.getIndex(r02);
                if (index == R.styleable.State_android_id) {
                    this.mId = typedArrayObtainStyledAttributes.getResourceId(index, this.mId);
                } else if (index == R.styleable.State_constraints) {
                    this.mConstraintID = typedArrayObtainStyledAttributes.getResourceId(index, this.mConstraintID);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.mConstraintID);
                    context.getResources().getResourceName(this.mConstraintID);
                    if ("layout".equals(resourceTypeName)) {
                        this.mIsLayout = true;
                    }
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        public void add(Variant variant) {
            this.mVariants.add(variant);
        }

        public int findMatch(float f, float f10) {
            for (int r02 = 0; r02 < this.mVariants.size(); r02++) {
                if (this.mVariants.get(r02).match(f, f10)) {
                    return r02;
                }
            }
            return -1;
        }
    }

    public static class Variant {
        int mConstraintID;
        int mId;
        boolean mIsLayout;
        float mMaxHeight;
        float mMaxWidth;
        float mMinHeight;
        float mMinWidth;

        public Variant(Context context, XmlPullParser xmlPullParser) throws Resources.NotFoundException {
            this.mMinWidth = Float.NaN;
            this.mMinHeight = Float.NaN;
            this.mMaxWidth = Float.NaN;
            this.mMaxHeight = Float.NaN;
            this.mConstraintID = -1;
            this.mIsLayout = false;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.Variant);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int r02 = 0; r02 < indexCount; r02++) {
                int index = typedArrayObtainStyledAttributes.getIndex(r02);
                if (index == R.styleable.Variant_constraints) {
                    this.mConstraintID = typedArrayObtainStyledAttributes.getResourceId(index, this.mConstraintID);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.mConstraintID);
                    context.getResources().getResourceName(this.mConstraintID);
                    if ("layout".equals(resourceTypeName)) {
                        this.mIsLayout = true;
                    }
                } else if (index == R.styleable.Variant_region_heightLessThan) {
                    this.mMaxHeight = typedArrayObtainStyledAttributes.getDimension(index, this.mMaxHeight);
                } else if (index == R.styleable.Variant_region_heightMoreThan) {
                    this.mMinHeight = typedArrayObtainStyledAttributes.getDimension(index, this.mMinHeight);
                } else if (index == R.styleable.Variant_region_widthLessThan) {
                    this.mMaxWidth = typedArrayObtainStyledAttributes.getDimension(index, this.mMaxWidth);
                } else if (index == R.styleable.Variant_region_widthMoreThan) {
                    this.mMinWidth = typedArrayObtainStyledAttributes.getDimension(index, this.mMinWidth);
                } else {
                    Log.v("ConstraintLayoutStates", "Unknown tag");
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        public boolean match(float f, float f10) {
            if (!Float.isNaN(this.mMinWidth) && f < this.mMinWidth) {
                return false;
            }
            if (!Float.isNaN(this.mMinHeight) && f10 < this.mMinHeight) {
                return false;
            }
            if (Float.isNaN(this.mMaxWidth) || f <= this.mMaxWidth) {
                return Float.isNaN(this.mMaxHeight) || f10 <= this.mMaxHeight;
            }
            return false;
        }
    }

    public StateSet(Context context, XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        load(context, xmlPullParser);
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0077  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void load(android.content.Context r9, org.xmlpull.v1.XmlPullParser r10) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            r8 = this;
            android.util.AttributeSet r0 = android.util.Xml.asAttributeSet(r10)
            int[] r1 = androidx.constraintlayout.widget.R.styleable.StateSet
            android.content.res.TypedArray r0 = r9.obtainStyledAttributes(r0, r1)
            int r1 = r0.getIndexCount()
            r2 = 0
            r3 = 0
        L10:
            if (r3 >= r1) goto L25
            int r4 = r0.getIndex(r3)
            int r5 = androidx.constraintlayout.widget.R.styleable.StateSet_defaultState
            if (r4 != r5) goto L22
            int r5 = r8.mDefaultState
            int r4 = r0.getResourceId(r4, r5)
            r8.mDefaultState = r4
        L22:
            int r3 = r3 + 1
            goto L10
        L25:
            r0.recycle()
            int r0 = r10.getEventType()     // Catch: java.io.IOException -> L9d org.xmlpull.v1.XmlPullParserException -> La2
            r1 = 0
        L2d:
            r3 = 1
            if (r0 == r3) goto La6
            if (r0 == 0) goto L95
            java.lang.String r4 = "StateSet"
            r5 = 3
            r6 = 2
            if (r0 == r6) goto L46
            if (r0 == r5) goto L3b
            goto L98
        L3b:
            java.lang.String r0 = r10.getName()     // Catch: java.io.IOException -> L9d org.xmlpull.v1.XmlPullParserException -> La2
            boolean r0 = r4.equals(r0)     // Catch: java.io.IOException -> L9d org.xmlpull.v1.XmlPullParserException -> La2
            if (r0 == 0) goto L98
            return
        L46:
            java.lang.String r0 = r10.getName()     // Catch: java.io.IOException -> L9d org.xmlpull.v1.XmlPullParserException -> La2
            int r7 = r0.hashCode()     // Catch: java.io.IOException -> L9d org.xmlpull.v1.XmlPullParserException -> La2
            switch(r7) {
                case 80204913: goto L6d;
                case 1301459538: goto L63;
                case 1382829617: goto L5c;
                case 1901439077: goto L52;
                default: goto L51;
            }     // Catch: java.io.IOException -> L9d org.xmlpull.v1.XmlPullParserException -> La2
        L51:
            goto L77
        L52:
            java.lang.String r3 = "Variant"
            boolean r0 = r0.equals(r3)     // Catch: java.io.IOException -> L9d org.xmlpull.v1.XmlPullParserException -> La2
            if (r0 == 0) goto L77
            r3 = 3
            goto L78
        L5c:
            boolean r0 = r0.equals(r4)     // Catch: java.io.IOException -> L9d org.xmlpull.v1.XmlPullParserException -> La2
            if (r0 == 0) goto L77
            goto L78
        L63:
            java.lang.String r3 = "LayoutDescription"
            boolean r0 = r0.equals(r3)     // Catch: java.io.IOException -> L9d org.xmlpull.v1.XmlPullParserException -> La2
            if (r0 == 0) goto L77
            r3 = 0
            goto L78
        L6d:
            java.lang.String r3 = "State"
            boolean r0 = r0.equals(r3)     // Catch: java.io.IOException -> L9d org.xmlpull.v1.XmlPullParserException -> La2
            if (r0 == 0) goto L77
            r3 = 2
            goto L78
        L77:
            r3 = -1
        L78:
            if (r3 == r6) goto L88
            if (r3 == r5) goto L7d
            goto L98
        L7d:
            androidx.constraintlayout.widget.StateSet$Variant r0 = new androidx.constraintlayout.widget.StateSet$Variant     // Catch: java.io.IOException -> L9d org.xmlpull.v1.XmlPullParserException -> La2
            r0.<init>(r9, r10)     // Catch: java.io.IOException -> L9d org.xmlpull.v1.XmlPullParserException -> La2
            if (r1 == 0) goto L98
            r1.add(r0)     // Catch: java.io.IOException -> L9d org.xmlpull.v1.XmlPullParserException -> La2
            goto L98
        L88:
            androidx.constraintlayout.widget.StateSet$State r1 = new androidx.constraintlayout.widget.StateSet$State     // Catch: java.io.IOException -> L9d org.xmlpull.v1.XmlPullParserException -> La2
            r1.<init>(r9, r10)     // Catch: java.io.IOException -> L9d org.xmlpull.v1.XmlPullParserException -> La2
            android.util.SparseArray<androidx.constraintlayout.widget.StateSet$State> r0 = r8.mStateList     // Catch: java.io.IOException -> L9d org.xmlpull.v1.XmlPullParserException -> La2
            int r3 = r1.mId     // Catch: java.io.IOException -> L9d org.xmlpull.v1.XmlPullParserException -> La2
            r0.put(r3, r1)     // Catch: java.io.IOException -> L9d org.xmlpull.v1.XmlPullParserException -> La2
            goto L98
        L95:
            r10.getName()     // Catch: java.io.IOException -> L9d org.xmlpull.v1.XmlPullParserException -> La2
        L98:
            int r0 = r10.next()     // Catch: java.io.IOException -> L9d org.xmlpull.v1.XmlPullParserException -> La2
            goto L2d
        L9d:
            r9 = move-exception
            r9.printStackTrace()
            goto La6
        La2:
            r9 = move-exception
            r9.printStackTrace()
        La6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.StateSet.load(android.content.Context, org.xmlpull.v1.XmlPullParser):void");
    }

    public int convertToConstraintSet(int r52, int r6, float f, float f10) {
        State state = this.mStateList.get(r6);
        if (state == null) {
            return r6;
        }
        if (f == -1.0f || f10 == -1.0f) {
            if (state.mConstraintID == r52) {
                return r52;
            }
            Iterator<Variant> it = state.mVariants.iterator();
            while (it.hasNext()) {
                if (r52 == it.next().mConstraintID) {
                    return r52;
                }
            }
            return state.mConstraintID;
        }
        Iterator<Variant> it2 = state.mVariants.iterator();
        Variant variant = null;
        while (it2.hasNext()) {
            Variant next = it2.next();
            if (next.match(f, f10)) {
                if (r52 == next.mConstraintID) {
                    return r52;
                }
                variant = next;
            }
        }
        return variant != null ? variant.mConstraintID : state.mConstraintID;
    }

    public boolean needsToChange(int r52, float f, float f10) {
        int r02 = this.mCurrentStateId;
        if (r02 != r52) {
            return true;
        }
        State stateValueAt = r52 == -1 ? this.mStateList.valueAt(0) : this.mStateList.get(r02);
        int r03 = this.mCurrentConstraintNumber;
        return (r03 == -1 || !stateValueAt.mVariants.get(r03).match(f, f10)) && this.mCurrentConstraintNumber != stateValueAt.findMatch(f, f10);
    }

    public void setOnConstraintsChanged(ConstraintsChangedListener constraintsChangedListener) {
        this.mConstraintsChangedListener = constraintsChangedListener;
    }

    public int stateGetConstraintID(int r22, int r32, int r42) {
        return updateConstraints(-1, r22, r32, r42);
    }

    public int updateConstraints(int r32, int r42, float f, float f10) {
        int r52;
        if (r32 == r42) {
            State stateValueAt = r42 == -1 ? this.mStateList.valueAt(0) : this.mStateList.get(this.mCurrentStateId);
            if (stateValueAt == null) {
                return -1;
            }
            return ((this.mCurrentConstraintNumber == -1 || !stateValueAt.mVariants.get(r32).match(f, f10)) && r32 != (r52 = stateValueAt.findMatch(f, f10))) ? r52 == -1 ? stateValueAt.mConstraintID : stateValueAt.mVariants.get(r52).mConstraintID : r32;
        }
        State state = this.mStateList.get(r42);
        if (state == null) {
            return -1;
        }
        int r43 = state.findMatch(f, f10);
        return r43 == -1 ? state.mConstraintID : state.mVariants.get(r43).mConstraintID;
    }
}
