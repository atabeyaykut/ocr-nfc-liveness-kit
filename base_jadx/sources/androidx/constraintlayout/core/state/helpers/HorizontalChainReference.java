package androidx.constraintlayout.core.state.helpers;

import androidx.constraintlayout.core.state.ConstraintReference;
import androidx.constraintlayout.core.state.HelperReference;
import androidx.constraintlayout.core.state.State;
import java.util.Iterator;

/* loaded from: classes.dex */
public class HorizontalChainReference extends ChainReference {

    /* renamed from: androidx.constraintlayout.core.state.helpers.HorizontalChainReference$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$androidx$constraintlayout$core$state$State$Chain;

        static {
            int[] r02 = new int[State.Chain.values().length];
            $SwitchMap$androidx$constraintlayout$core$state$State$Chain = r02;
            try {
                r02[State.Chain.SPREAD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$state$State$Chain[State.Chain.SPREAD_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$state$State$Chain[State.Chain.PACKED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public HorizontalChainReference(State state) {
        super(state, State.Helper.HORIZONTAL_CHAIN);
    }

    @Override // androidx.constraintlayout.core.state.HelperReference, androidx.constraintlayout.core.state.ConstraintReference, androidx.constraintlayout.core.state.Reference
    public void apply() {
        ConstraintReference constraintReferenceEndToEnd;
        ConstraintReference constraintReferenceMargin;
        int r12;
        ConstraintReference constraintReferenceEndToEnd2;
        ConstraintReference constraintReferenceStartToEnd;
        ConstraintReference constraintReferenceMargin2;
        int r42;
        ConstraintReference constraintReferenceStartToEnd2;
        Iterator<Object> it = this.mReferences.iterator();
        while (it.hasNext()) {
            ((HelperReference) this).mState.constraints(it.next()).clearHorizontal();
        }
        Iterator<Object> it2 = this.mReferences.iterator();
        ConstraintReference constraintReference = null;
        ConstraintReference constraintReference2 = null;
        while (it2.hasNext()) {
            ConstraintReference constraintReferenceConstraints = ((HelperReference) this).mState.constraints(it2.next());
            if (constraintReference2 == null) {
                Object obj = this.mStartToStart;
                if (obj != null) {
                    constraintReferenceStartToEnd2 = constraintReferenceConstraints.startToStart(obj);
                } else {
                    Object obj2 = this.mStartToEnd;
                    if (obj2 != null) {
                        constraintReferenceStartToEnd2 = constraintReferenceConstraints.startToEnd(obj2);
                    } else {
                        Object obj3 = this.mLeftToLeft;
                        if (obj3 != null) {
                            constraintReferenceStartToEnd = constraintReferenceConstraints.startToStart(obj3);
                        } else {
                            Object obj4 = this.mLeftToRight;
                            if (obj4 != null) {
                                constraintReferenceStartToEnd = constraintReferenceConstraints.startToEnd(obj4);
                            } else {
                                constraintReferenceConstraints.startToStart(State.PARENT);
                                constraintReference2 = constraintReferenceConstraints;
                            }
                        }
                        constraintReferenceMargin2 = constraintReferenceStartToEnd.margin(this.mMarginLeft);
                        r42 = this.mMarginLeftGone;
                        constraintReferenceMargin2.marginGone(r42);
                        constraintReference2 = constraintReferenceConstraints;
                    }
                }
                constraintReferenceMargin2 = constraintReferenceStartToEnd2.margin(this.mMarginStart);
                r42 = this.mMarginStartGone;
                constraintReferenceMargin2.marginGone(r42);
                constraintReference2 = constraintReferenceConstraints;
            }
            if (constraintReference != null) {
                constraintReference.endToStart(constraintReferenceConstraints.getKey());
                constraintReferenceConstraints.startToEnd(constraintReference.getKey());
            }
            constraintReference = constraintReferenceConstraints;
        }
        if (constraintReference != null) {
            Object obj5 = this.mEndToStart;
            if (obj5 != null) {
                constraintReferenceEndToEnd2 = constraintReference.endToStart(obj5);
            } else {
                Object obj6 = this.mEndToEnd;
                if (obj6 != null) {
                    constraintReferenceEndToEnd2 = constraintReference.endToEnd(obj6);
                } else {
                    Object obj7 = this.mRightToLeft;
                    if (obj7 != null) {
                        constraintReferenceEndToEnd = constraintReference.endToStart(obj7);
                    } else {
                        Object obj8 = this.mRightToRight;
                        if (obj8 != null) {
                            constraintReferenceEndToEnd = constraintReference.endToEnd(obj8);
                        } else {
                            constraintReference.endToEnd(State.PARENT);
                        }
                    }
                    constraintReferenceMargin = constraintReferenceEndToEnd.margin(this.mMarginRight);
                    r12 = this.mMarginRightGone;
                    constraintReferenceMargin.marginGone(r12);
                }
            }
            constraintReferenceMargin = constraintReferenceEndToEnd2.margin(this.mMarginEnd);
            r12 = this.mMarginEndGone;
            constraintReferenceMargin.marginGone(r12);
        }
        if (constraintReference2 == null) {
            return;
        }
        float f = this.mBias;
        if (f != 0.5f) {
            constraintReference2.horizontalBias(f);
        }
        int r02 = AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$state$State$Chain[this.mStyle.ordinal()];
        if (r02 == 1) {
            constraintReference2.setHorizontalChainStyle(0);
        } else if (r02 == 2) {
            constraintReference2.setHorizontalChainStyle(1);
        } else {
            if (r02 != 3) {
                return;
            }
            constraintReference2.setHorizontalChainStyle(2);
        }
    }
}
