package androidx.constraintlayout.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.camera.camera2.internal.c;
import androidx.constraintlayout.widget.ConstraintLayout;

/* loaded from: classes.dex */
public class ConstraintProperties {
    public static final int BASELINE = 5;
    public static final int BOTTOM = 4;
    public static final int END = 7;
    public static final int LEFT = 1;
    public static final int MATCH_CONSTRAINT = 0;
    public static final int MATCH_CONSTRAINT_SPREAD = 0;
    public static final int MATCH_CONSTRAINT_WRAP = 1;
    public static final int PARENT_ID = 0;
    public static final int RIGHT = 2;
    public static final int START = 6;
    public static final int TOP = 3;
    public static final int UNSET = -1;
    public static final int WRAP_CONTENT = -2;
    ConstraintLayout.LayoutParams mParams;
    View mView;

    public ConstraintProperties(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ConstraintLayout.LayoutParams)) {
            throw new RuntimeException("Only children of ConstraintLayout.LayoutParams supported");
        }
        this.mParams = (ConstraintLayout.LayoutParams) layoutParams;
        this.mView = view;
    }

    private String sideToString(int r12) {
        switch (r12) {
            case 1:
                return "left";
            case 2:
                return "right";
            case 3:
                return "top";
            case 4:
                return "bottom";
            case 5:
                return "baseline";
            case 6:
                return "start";
            case 7:
                return "end";
            default:
                return "undefined";
        }
    }

    public ConstraintProperties addToHorizontalChain(int r52, int r6) {
        connect(1, r52, r52 == 0 ? 1 : 2, 0);
        connect(2, r6, r6 == 0 ? 2 : 1, 0);
        if (r52 != 0) {
            new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(r52)).connect(2, this.mView.getId(), 1, 0);
        }
        if (r6 != 0) {
            new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(r6)).connect(1, this.mView.getId(), 2, 0);
        }
        return this;
    }

    public ConstraintProperties addToHorizontalChainRTL(int r52, int r6) {
        connect(6, r52, r52 == 0 ? 6 : 7, 0);
        connect(7, r6, r6 == 0 ? 7 : 6, 0);
        if (r52 != 0) {
            new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(r52)).connect(7, this.mView.getId(), 6, 0);
        }
        if (r6 != 0) {
            new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(r6)).connect(6, this.mView.getId(), 7, 0);
        }
        return this;
    }

    public ConstraintProperties addToVerticalChain(int r52, int r6) {
        connect(3, r52, r52 == 0 ? 3 : 4, 0);
        connect(4, r6, r6 == 0 ? 4 : 3, 0);
        if (r52 != 0) {
            new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(r52)).connect(4, this.mView.getId(), 3, 0);
        }
        if (r6 != 0) {
            new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(r6)).connect(3, this.mView.getId(), 4, 0);
        }
        return this;
    }

    public ConstraintProperties alpha(float f) {
        this.mView.setAlpha(f);
        return this;
    }

    public void apply() {
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x002c A[PHI: r0 r1
      0x002c: PHI (r0v6 int) = (r0v5 int), (r0v5 int), (r0v7 int), (r0v7 int) binds: [B:10:0x0013, B:11:0x0015, B:14:0x001a, B:15:0x001c] A[DONT_GENERATE, DONT_INLINE]
      0x002c: PHI (r1v1 int) = (r1v0 int), (r1v0 int), (r1v2 int), (r1v2 int) binds: [B:10:0x0013, B:11:0x0015, B:14:0x001a, B:15:0x001c] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.constraintlayout.widget.ConstraintProperties center(int r3, int r4, int r5, int r6, int r7, int r8, float r9) {
        /*
            r2 = this;
            java.lang.String r0 = "margin must be > 0"
            if (r5 < 0) goto L45
            if (r8 < 0) goto L3f
            r0 = 0
            int r0 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
            if (r0 <= 0) goto L37
            r0 = 1065353216(0x3f800000, float:1.0)
            int r0 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
            if (r0 > 0) goto L37
            r0 = 2
            r1 = 1
            if (r4 == r1) goto L2c
            if (r4 != r0) goto L18
            goto L2c
        L18:
            r0 = 7
            r1 = 6
            if (r4 == r1) goto L2c
            if (r4 != r0) goto L1f
            goto L2c
        L1f:
            r0 = 3
            r2.connect(r0, r3, r4, r5)
            r3 = 4
            r2.connect(r3, r6, r7, r8)
            androidx.constraintlayout.widget.ConstraintLayout$LayoutParams r3 = r2.mParams
            r3.verticalBias = r9
            goto L36
        L2c:
            r2.connect(r1, r3, r4, r5)
            r2.connect(r0, r6, r7, r8)
            androidx.constraintlayout.widget.ConstraintLayout$LayoutParams r3 = r2.mParams
            r3.horizontalBias = r9
        L36:
            return r2
        L37:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException
            java.lang.String r4 = "bias must be between 0 and 1 inclusive"
            r3.<init>(r4)
            throw r3
        L3f:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException
            r3.<init>(r0)
            throw r3
        L45:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException
            r3.<init>(r0)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintProperties.center(int, int, int, int, int, int, float):androidx.constraintlayout.widget.ConstraintProperties");
    }

    public ConstraintProperties centerHorizontally(int r92) {
        int r22;
        int r32;
        int r52;
        int r6;
        float f;
        ConstraintProperties constraintProperties;
        int r12;
        int r42;
        if (r92 == 0) {
            r12 = 0;
            r22 = 1;
            r32 = 0;
            r42 = 0;
            r52 = 2;
            r6 = 0;
            f = 0.5f;
            constraintProperties = this;
        } else {
            r22 = 2;
            r32 = 0;
            r52 = 1;
            r6 = 0;
            f = 0.5f;
            constraintProperties = this;
            r12 = r92;
            r42 = r92;
        }
        constraintProperties.center(r12, r22, r32, r42, r52, r6, f);
        return this;
    }

    public ConstraintProperties centerHorizontally(int r22, int r32, int r42, int r52, int r6, int r72, float f) {
        connect(1, r22, r32, r42);
        connect(2, r52, r6, r72);
        this.mParams.horizontalBias = f;
        return this;
    }

    public ConstraintProperties centerHorizontallyRtl(int r92) {
        int r22;
        int r32;
        int r52;
        int r6;
        float f;
        ConstraintProperties constraintProperties;
        int r12;
        int r42;
        if (r92 == 0) {
            r12 = 0;
            r22 = 6;
            r32 = 0;
            r42 = 0;
            r52 = 7;
            r6 = 0;
            f = 0.5f;
            constraintProperties = this;
        } else {
            r22 = 7;
            r32 = 0;
            r52 = 6;
            r6 = 0;
            f = 0.5f;
            constraintProperties = this;
            r12 = r92;
            r42 = r92;
        }
        constraintProperties.center(r12, r22, r32, r42, r52, r6, f);
        return this;
    }

    public ConstraintProperties centerHorizontallyRtl(int r22, int r32, int r42, int r52, int r6, int r72, float f) {
        connect(6, r22, r32, r42);
        connect(7, r52, r6, r72);
        this.mParams.horizontalBias = f;
        return this;
    }

    public ConstraintProperties centerVertically(int r92) {
        int r22;
        int r32;
        int r52;
        int r6;
        float f;
        ConstraintProperties constraintProperties;
        int r12;
        int r42;
        if (r92 == 0) {
            r12 = 0;
            r22 = 3;
            r32 = 0;
            r42 = 0;
            r52 = 4;
            r6 = 0;
            f = 0.5f;
            constraintProperties = this;
        } else {
            r22 = 4;
            r32 = 0;
            r52 = 3;
            r6 = 0;
            f = 0.5f;
            constraintProperties = this;
            r12 = r92;
            r42 = r92;
        }
        constraintProperties.center(r12, r22, r32, r42, r52, r6, f);
        return this;
    }

    public ConstraintProperties centerVertically(int r22, int r32, int r42, int r52, int r6, int r72, float f) {
        connect(3, r22, r32, r42);
        connect(4, r52, r6, r72);
        this.mParams.verticalBias = f;
        return this;
    }

    public ConstraintProperties connect(int r10, int r11, int r12, int r13) {
        ConstraintLayout.LayoutParams layoutParams;
        ConstraintLayout.LayoutParams layoutParams2;
        ConstraintLayout.LayoutParams layoutParams3;
        switch (r10) {
            case 1:
                if (r12 == 1) {
                    ConstraintLayout.LayoutParams layoutParams4 = this.mParams;
                    layoutParams4.leftToLeft = r11;
                    layoutParams4.leftToRight = -1;
                } else {
                    if (r12 != 2) {
                        throw new IllegalArgumentException(c.h(new StringBuilder("Left to "), sideToString(r12), " undefined"));
                    }
                    ConstraintLayout.LayoutParams layoutParams5 = this.mParams;
                    layoutParams5.leftToRight = r11;
                    layoutParams5.leftToLeft = -1;
                }
                ((ViewGroup.MarginLayoutParams) this.mParams).leftMargin = r13;
                return this;
            case 2:
                if (r12 == 1) {
                    ConstraintLayout.LayoutParams layoutParams6 = this.mParams;
                    layoutParams6.rightToLeft = r11;
                    layoutParams6.rightToRight = -1;
                } else {
                    if (r12 != 2) {
                        throw new IllegalArgumentException(c.h(new StringBuilder("right to "), sideToString(r12), " undefined"));
                    }
                    ConstraintLayout.LayoutParams layoutParams7 = this.mParams;
                    layoutParams7.rightToRight = r11;
                    layoutParams7.rightToLeft = -1;
                }
                ((ViewGroup.MarginLayoutParams) this.mParams).rightMargin = r13;
                return this;
            case 3:
                if (r12 == 3) {
                    layoutParams = this.mParams;
                    layoutParams.topToTop = r11;
                    layoutParams.topToBottom = -1;
                } else {
                    if (r12 != 4) {
                        throw new IllegalArgumentException(c.h(new StringBuilder("right to "), sideToString(r12), " undefined"));
                    }
                    layoutParams = this.mParams;
                    layoutParams.topToBottom = r11;
                    layoutParams.topToTop = -1;
                }
                layoutParams.baselineToBaseline = -1;
                layoutParams.baselineToTop = -1;
                layoutParams.baselineToBottom = -1;
                ((ViewGroup.MarginLayoutParams) this.mParams).topMargin = r13;
                return this;
            case 4:
                if (r12 == 4) {
                    layoutParams2 = this.mParams;
                    layoutParams2.bottomToBottom = r11;
                    layoutParams2.bottomToTop = -1;
                } else {
                    if (r12 != 3) {
                        throw new IllegalArgumentException(c.h(new StringBuilder("right to "), sideToString(r12), " undefined"));
                    }
                    layoutParams2 = this.mParams;
                    layoutParams2.bottomToTop = r11;
                    layoutParams2.bottomToBottom = -1;
                }
                layoutParams2.baselineToBaseline = -1;
                layoutParams2.baselineToTop = -1;
                layoutParams2.baselineToBottom = -1;
                ((ViewGroup.MarginLayoutParams) this.mParams).bottomMargin = r13;
                return this;
            case 5:
                if (r12 == 5) {
                    ConstraintLayout.LayoutParams layoutParams8 = this.mParams;
                    layoutParams8.baselineToBaseline = r11;
                    layoutParams8.bottomToBottom = -1;
                    layoutParams8.bottomToTop = -1;
                    layoutParams8.topToTop = -1;
                    layoutParams8.topToBottom = -1;
                }
                if (r12 == 3) {
                    layoutParams3 = this.mParams;
                    layoutParams3.baselineToTop = r11;
                } else {
                    if (r12 != 4) {
                        throw new IllegalArgumentException(c.h(new StringBuilder("right to "), sideToString(r12), " undefined"));
                    }
                    layoutParams3 = this.mParams;
                    layoutParams3.baselineToBottom = r11;
                }
                layoutParams3.bottomToBottom = -1;
                layoutParams3.bottomToTop = -1;
                layoutParams3.topToTop = -1;
                layoutParams3.topToBottom = -1;
                this.mParams.baselineMargin = r13;
                return this;
            case 6:
                if (r12 == 6) {
                    ConstraintLayout.LayoutParams layoutParams9 = this.mParams;
                    layoutParams9.startToStart = r11;
                    layoutParams9.startToEnd = -1;
                } else {
                    if (r12 != 7) {
                        throw new IllegalArgumentException(c.h(new StringBuilder("right to "), sideToString(r12), " undefined"));
                    }
                    ConstraintLayout.LayoutParams layoutParams10 = this.mParams;
                    layoutParams10.startToEnd = r11;
                    layoutParams10.startToStart = -1;
                }
                this.mParams.setMarginStart(r13);
                return this;
            case 7:
                if (r12 == 7) {
                    ConstraintLayout.LayoutParams layoutParams11 = this.mParams;
                    layoutParams11.endToEnd = r11;
                    layoutParams11.endToStart = -1;
                } else {
                    if (r12 != 6) {
                        throw new IllegalArgumentException(c.h(new StringBuilder("right to "), sideToString(r12), " undefined"));
                    }
                    ConstraintLayout.LayoutParams layoutParams12 = this.mParams;
                    layoutParams12.endToStart = r11;
                    layoutParams12.endToEnd = -1;
                }
                this.mParams.setMarginEnd(r13);
                return this;
            default:
                StringBuilder sb2 = new StringBuilder();
                sb2.append(sideToString(r10));
                sb2.append(" to ");
                throw new IllegalArgumentException(c.h(sb2, sideToString(r12), " unknown"));
        }
    }

    public ConstraintProperties constrainDefaultHeight(int r22) {
        this.mParams.matchConstraintDefaultHeight = r22;
        return this;
    }

    public ConstraintProperties constrainDefaultWidth(int r22) {
        this.mParams.matchConstraintDefaultWidth = r22;
        return this;
    }

    public ConstraintProperties constrainHeight(int r22) {
        ((ViewGroup.MarginLayoutParams) this.mParams).height = r22;
        return this;
    }

    public ConstraintProperties constrainMaxHeight(int r22) {
        this.mParams.matchConstraintMaxHeight = r22;
        return this;
    }

    public ConstraintProperties constrainMaxWidth(int r22) {
        this.mParams.matchConstraintMaxWidth = r22;
        return this;
    }

    public ConstraintProperties constrainMinHeight(int r22) {
        this.mParams.matchConstraintMinHeight = r22;
        return this;
    }

    public ConstraintProperties constrainMinWidth(int r22) {
        this.mParams.matchConstraintMinWidth = r22;
        return this;
    }

    public ConstraintProperties constrainWidth(int r22) {
        ((ViewGroup.MarginLayoutParams) this.mParams).width = r22;
        return this;
    }

    public ConstraintProperties dimensionRatio(String str) {
        this.mParams.dimensionRatio = str;
        return this;
    }

    public ConstraintProperties elevation(float f) {
        this.mView.setElevation(f);
        return this;
    }

    public ConstraintProperties goneMargin(int r12, int r22) {
        switch (r12) {
            case 1:
                this.mParams.goneLeftMargin = r22;
                return this;
            case 2:
                this.mParams.goneRightMargin = r22;
                return this;
            case 3:
                this.mParams.goneTopMargin = r22;
                return this;
            case 4:
                this.mParams.goneBottomMargin = r22;
                return this;
            case 5:
                throw new IllegalArgumentException("baseline does not support margins");
            case 6:
                this.mParams.goneStartMargin = r22;
                return this;
            case 7:
                this.mParams.goneEndMargin = r22;
                return this;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
    }

    public ConstraintProperties horizontalBias(float f) {
        this.mParams.horizontalBias = f;
        return this;
    }

    public ConstraintProperties horizontalChainStyle(int r22) {
        this.mParams.horizontalChainStyle = r22;
        return this;
    }

    public ConstraintProperties horizontalWeight(float f) {
        this.mParams.horizontalWeight = f;
        return this;
    }

    public ConstraintProperties margin(int r12, int r22) {
        switch (r12) {
            case 1:
                ((ViewGroup.MarginLayoutParams) this.mParams).leftMargin = r22;
                return this;
            case 2:
                ((ViewGroup.MarginLayoutParams) this.mParams).rightMargin = r22;
                return this;
            case 3:
                ((ViewGroup.MarginLayoutParams) this.mParams).topMargin = r22;
                return this;
            case 4:
                ((ViewGroup.MarginLayoutParams) this.mParams).bottomMargin = r22;
                return this;
            case 5:
                throw new IllegalArgumentException("baseline does not support margins");
            case 6:
                this.mParams.setMarginStart(r22);
                return this;
            case 7:
                this.mParams.setMarginEnd(r22);
                return this;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
    }

    public ConstraintProperties removeConstraints(int r32) {
        switch (r32) {
            case 1:
                ConstraintLayout.LayoutParams layoutParams = this.mParams;
                layoutParams.leftToRight = -1;
                layoutParams.leftToLeft = -1;
                ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = -1;
                layoutParams.goneLeftMargin = Integer.MIN_VALUE;
                return this;
            case 2:
                ConstraintLayout.LayoutParams layoutParams2 = this.mParams;
                layoutParams2.rightToRight = -1;
                layoutParams2.rightToLeft = -1;
                ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin = -1;
                layoutParams2.goneRightMargin = Integer.MIN_VALUE;
                return this;
            case 3:
                ConstraintLayout.LayoutParams layoutParams3 = this.mParams;
                layoutParams3.topToBottom = -1;
                layoutParams3.topToTop = -1;
                ((ViewGroup.MarginLayoutParams) layoutParams3).topMargin = -1;
                layoutParams3.goneTopMargin = Integer.MIN_VALUE;
                return this;
            case 4:
                ConstraintLayout.LayoutParams layoutParams4 = this.mParams;
                layoutParams4.bottomToTop = -1;
                layoutParams4.bottomToBottom = -1;
                ((ViewGroup.MarginLayoutParams) layoutParams4).bottomMargin = -1;
                layoutParams4.goneBottomMargin = Integer.MIN_VALUE;
                return this;
            case 5:
                this.mParams.baselineToBaseline = -1;
                return this;
            case 6:
                ConstraintLayout.LayoutParams layoutParams5 = this.mParams;
                layoutParams5.startToEnd = -1;
                layoutParams5.startToStart = -1;
                layoutParams5.setMarginStart(-1);
                this.mParams.goneStartMargin = Integer.MIN_VALUE;
                return this;
            case 7:
                ConstraintLayout.LayoutParams layoutParams6 = this.mParams;
                layoutParams6.endToStart = -1;
                layoutParams6.endToEnd = -1;
                layoutParams6.setMarginEnd(-1);
                this.mParams.goneEndMargin = Integer.MIN_VALUE;
                return this;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
    }

    public ConstraintProperties removeFromHorizontalChain() {
        ConstraintLayout.LayoutParams layoutParams = this.mParams;
        int r12 = layoutParams.leftToRight;
        int r22 = layoutParams.rightToLeft;
        if (r12 == -1 && r22 == -1) {
            int r23 = layoutParams.startToEnd;
            int r02 = layoutParams.endToStart;
            if (r23 != -1 || r02 != -1) {
                ConstraintProperties constraintProperties = new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(r23));
                ConstraintProperties constraintProperties2 = new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(r02));
                ConstraintLayout.LayoutParams layoutParams2 = this.mParams;
                if (r23 != -1 && r02 != -1) {
                    constraintProperties.connect(7, r02, 6, 0);
                    constraintProperties2.connect(6, r12, 7, 0);
                } else if (r12 != -1 || r02 != -1) {
                    int r03 = layoutParams2.rightToRight;
                    if (r03 != -1) {
                        constraintProperties.connect(7, r03, 7, 0);
                    } else {
                        int r04 = layoutParams2.leftToLeft;
                        if (r04 != -1) {
                            constraintProperties2.connect(6, r04, 6, 0);
                        }
                    }
                }
            }
            removeConstraints(6);
            removeConstraints(7);
        } else {
            ConstraintProperties constraintProperties3 = new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(r12));
            ConstraintProperties constraintProperties4 = new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(r22));
            ConstraintLayout.LayoutParams layoutParams3 = this.mParams;
            if (r12 != -1 && r22 != -1) {
                constraintProperties3.connect(2, r22, 1, 0);
                constraintProperties4.connect(1, r12, 2, 0);
            } else if (r12 != -1 || r22 != -1) {
                int r13 = layoutParams3.rightToRight;
                if (r13 != -1) {
                    constraintProperties3.connect(2, r13, 2, 0);
                } else {
                    int r05 = layoutParams3.leftToLeft;
                    if (r05 != -1) {
                        constraintProperties4.connect(1, r05, 1, 0);
                    }
                }
            }
            removeConstraints(1);
            removeConstraints(2);
        }
        return this;
    }

    public ConstraintProperties removeFromVerticalChain() {
        ConstraintLayout.LayoutParams layoutParams = this.mParams;
        int r12 = layoutParams.topToBottom;
        int r02 = layoutParams.bottomToTop;
        if (r12 != -1 || r02 != -1) {
            ConstraintProperties constraintProperties = new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(r12));
            ConstraintProperties constraintProperties2 = new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(r02));
            ConstraintLayout.LayoutParams layoutParams2 = this.mParams;
            if (r12 != -1 && r02 != -1) {
                constraintProperties.connect(4, r02, 3, 0);
                constraintProperties2.connect(3, r12, 4, 0);
            } else if (r12 != -1 || r02 != -1) {
                int r03 = layoutParams2.bottomToBottom;
                if (r03 != -1) {
                    constraintProperties.connect(4, r03, 4, 0);
                } else {
                    int r04 = layoutParams2.topToTop;
                    if (r04 != -1) {
                        constraintProperties2.connect(3, r04, 3, 0);
                    }
                }
            }
        }
        removeConstraints(3);
        removeConstraints(4);
        return this;
    }

    public ConstraintProperties rotation(float f) {
        this.mView.setRotation(f);
        return this;
    }

    public ConstraintProperties rotationX(float f) {
        this.mView.setRotationX(f);
        return this;
    }

    public ConstraintProperties rotationY(float f) {
        this.mView.setRotationY(f);
        return this;
    }

    public ConstraintProperties scaleX(float f) {
        this.mView.setScaleY(f);
        return this;
    }

    public ConstraintProperties scaleY(float f) {
        return this;
    }

    public ConstraintProperties transformPivot(float f, float f10) {
        this.mView.setPivotX(f);
        this.mView.setPivotY(f10);
        return this;
    }

    public ConstraintProperties transformPivotX(float f) {
        this.mView.setPivotX(f);
        return this;
    }

    public ConstraintProperties transformPivotY(float f) {
        this.mView.setPivotY(f);
        return this;
    }

    public ConstraintProperties translation(float f, float f10) {
        this.mView.setTranslationX(f);
        this.mView.setTranslationY(f10);
        return this;
    }

    public ConstraintProperties translationX(float f) {
        this.mView.setTranslationX(f);
        return this;
    }

    public ConstraintProperties translationY(float f) {
        this.mView.setTranslationY(f);
        return this;
    }

    public ConstraintProperties translationZ(float f) {
        this.mView.setTranslationZ(f);
        return this;
    }

    public ConstraintProperties verticalBias(float f) {
        this.mParams.verticalBias = f;
        return this;
    }

    public ConstraintProperties verticalChainStyle(int r22) {
        this.mParams.verticalChainStyle = r22;
        return this;
    }

    public ConstraintProperties verticalWeight(float f) {
        this.mParams.verticalWeight = f;
        return this;
    }

    public ConstraintProperties visibility(int r22) {
        this.mView.setVisibility(r22);
        return this;
    }
}
