package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.view.ViewCompat;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

/* loaded from: classes.dex */
public class ChangeBounds extends Transition {
    private static final Property<View, PointF> BOTTOM_RIGHT_ONLY_PROPERTY;
    private static final Property<ViewBounds, PointF> BOTTOM_RIGHT_PROPERTY;
    private static final Property<Drawable, PointF> DRAWABLE_ORIGIN_PROPERTY;
    private static final Property<View, PointF> POSITION_PROPERTY;
    private static final Property<View, PointF> TOP_LEFT_ONLY_PROPERTY;
    private static final Property<ViewBounds, PointF> TOP_LEFT_PROPERTY;
    private boolean mReparent;
    private boolean mResizeClip;
    private int[] mTempLocation;
    private static final String PROPNAME_BOUNDS = "android:changeBounds:bounds";
    private static final String PROPNAME_CLIP = "android:changeBounds:clip";
    private static final String PROPNAME_PARENT = "android:changeBounds:parent";
    private static final String PROPNAME_WINDOW_X = "android:changeBounds:windowX";
    private static final String PROPNAME_WINDOW_Y = "android:changeBounds:windowY";
    private static final String[] sTransitionProperties = {PROPNAME_BOUNDS, PROPNAME_CLIP, PROPNAME_PARENT, PROPNAME_WINDOW_X, PROPNAME_WINDOW_Y};
    private static RectEvaluator sRectEvaluator = new RectEvaluator();

    public static class ViewBounds {
        private int mBottom;
        private int mBottomRightCalls;
        private int mLeft;
        private int mRight;
        private int mTop;
        private int mTopLeftCalls;
        private View mView;

        public ViewBounds(View view) {
            this.mView = view;
        }

        private void setLeftTopRightBottom() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
            ViewUtils.setLeftTopRightBottom(this.mView, this.mLeft, this.mTop, this.mRight, this.mBottom);
            this.mTopLeftCalls = 0;
            this.mBottomRightCalls = 0;
        }

        public void setBottomRight(PointF pointF) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
            this.mRight = Math.round(pointF.x);
            this.mBottom = Math.round(pointF.y);
            int r22 = this.mBottomRightCalls + 1;
            this.mBottomRightCalls = r22;
            if (this.mTopLeftCalls == r22) {
                setLeftTopRightBottom();
            }
        }

        public void setTopLeft(PointF pointF) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
            this.mLeft = Math.round(pointF.x);
            this.mTop = Math.round(pointF.y);
            int r22 = this.mTopLeftCalls + 1;
            this.mTopLeftCalls = r22;
            if (r22 == this.mBottomRightCalls) {
                setLeftTopRightBottom();
            }
        }
    }

    static {
        Class<PointF> cls = PointF.class;
        DRAWABLE_ORIGIN_PROPERTY = new Property<Drawable, PointF>(cls, "boundsOrigin") { // from class: androidx.transition.ChangeBounds.1
            private Rect mBounds = new Rect();

            @Override // android.util.Property
            public PointF get(Drawable drawable) {
                drawable.copyBounds(this.mBounds);
                Rect rect = this.mBounds;
                return new PointF(rect.left, rect.top);
            }

            @Override // android.util.Property
            public void set(Drawable drawable, PointF pointF) {
                drawable.copyBounds(this.mBounds);
                this.mBounds.offsetTo(Math.round(pointF.x), Math.round(pointF.y));
                drawable.setBounds(this.mBounds);
            }
        };
        String str = "topLeft";
        TOP_LEFT_PROPERTY = new Property<ViewBounds, PointF>(cls, str) { // from class: androidx.transition.ChangeBounds.2
            @Override // android.util.Property
            public PointF get(ViewBounds viewBounds) {
                return null;
            }

            @Override // android.util.Property
            public void set(ViewBounds viewBounds, PointF pointF) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
                viewBounds.setTopLeft(pointF);
            }
        };
        String str2 = "bottomRight";
        BOTTOM_RIGHT_PROPERTY = new Property<ViewBounds, PointF>(cls, str2) { // from class: androidx.transition.ChangeBounds.3
            @Override // android.util.Property
            public PointF get(ViewBounds viewBounds) {
                return null;
            }

            @Override // android.util.Property
            public void set(ViewBounds viewBounds, PointF pointF) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
                viewBounds.setBottomRight(pointF);
            }
        };
        BOTTOM_RIGHT_ONLY_PROPERTY = new Property<View, PointF>(cls, str2) { // from class: androidx.transition.ChangeBounds.4
            @Override // android.util.Property
            public PointF get(View view) {
                return null;
            }

            @Override // android.util.Property
            public void set(View view, PointF pointF) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
                ViewUtils.setLeftTopRightBottom(view, view.getLeft(), view.getTop(), Math.round(pointF.x), Math.round(pointF.y));
            }
        };
        TOP_LEFT_ONLY_PROPERTY = new Property<View, PointF>(cls, str) { // from class: androidx.transition.ChangeBounds.5
            @Override // android.util.Property
            public PointF get(View view) {
                return null;
            }

            @Override // android.util.Property
            public void set(View view, PointF pointF) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
                ViewUtils.setLeftTopRightBottom(view, Math.round(pointF.x), Math.round(pointF.y), view.getRight(), view.getBottom());
            }
        };
        POSITION_PROPERTY = new Property<View, PointF>(cls, "position") { // from class: androidx.transition.ChangeBounds.6
            @Override // android.util.Property
            public PointF get(View view) {
                return null;
            }

            @Override // android.util.Property
            public void set(View view, PointF pointF) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
                int r02 = Math.round(pointF.x);
                int r52 = Math.round(pointF.y);
                ViewUtils.setLeftTopRightBottom(view, r02, r52, view.getWidth() + r02, view.getHeight() + r52);
            }
        };
    }

    public ChangeBounds() {
        this.mTempLocation = new int[2];
        this.mResizeClip = false;
        this.mReparent = false;
    }

    @SuppressLint({"RestrictedApi"})
    public ChangeBounds(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTempLocation = new int[2];
        this.mResizeClip = false;
        this.mReparent = false;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.CHANGE_BOUNDS);
        boolean namedBoolean = TypedArrayUtils.getNamedBoolean(typedArrayObtainStyledAttributes, (XmlResourceParser) attributeSet, "resizeClip", 0, false);
        typedArrayObtainStyledAttributes.recycle();
        setResizeClip(namedBoolean);
    }

    private void captureValues(TransitionValues transitionValues) {
        View view = transitionValues.view;
        if (!ViewCompat.isLaidOut(view) && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        transitionValues.values.put(PROPNAME_BOUNDS, new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        transitionValues.values.put(PROPNAME_PARENT, transitionValues.view.getParent());
        if (this.mReparent) {
            transitionValues.view.getLocationInWindow(this.mTempLocation);
            transitionValues.values.put(PROPNAME_WINDOW_X, Integer.valueOf(this.mTempLocation[0]));
            transitionValues.values.put(PROPNAME_WINDOW_Y, Integer.valueOf(this.mTempLocation[1]));
        }
        if (this.mResizeClip) {
            transitionValues.values.put(PROPNAME_CLIP, ViewCompat.getClipBounds(view));
        }
    }

    private boolean parentMatches(View view, View view2) {
        if (!this.mReparent) {
            return true;
        }
        TransitionValues matchedTransitionValues = getMatchedTransitionValues(view, true);
        if (matchedTransitionValues == null) {
            if (view == view2) {
                return true;
            }
        } else if (view2 == matchedTransitionValues.view) {
            return true;
        }
        return false;
    }

    @Override // androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    @Override // androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    @Override // androidx.transition.Transition
    @Nullable
    public Animator createAnimator(@NonNull final ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        int r12;
        final View view;
        int r32;
        Rect rect;
        ObjectAnimator objectAnimator;
        Animator animatorMergeAnimators;
        Path path;
        Property<View, PointF> property;
        if (transitionValues == null || transitionValues2 == null) {
            return null;
        }
        Map<String, Object> map = transitionValues.values;
        Map<String, Object> map2 = transitionValues2.values;
        ViewGroup viewGroup2 = (ViewGroup) map.get(PROPNAME_PARENT);
        ViewGroup viewGroup3 = (ViewGroup) map2.get(PROPNAME_PARENT);
        if (viewGroup2 == null || viewGroup3 == null) {
            return null;
        }
        final View view2 = transitionValues2.view;
        if (!parentMatches(viewGroup2, viewGroup3)) {
            int r22 = ((Integer) transitionValues.values.get(PROPNAME_WINDOW_X)).intValue();
            int r02 = ((Integer) transitionValues.values.get(PROPNAME_WINDOW_Y)).intValue();
            int r33 = ((Integer) transitionValues2.values.get(PROPNAME_WINDOW_X)).intValue();
            int r13 = ((Integer) transitionValues2.values.get(PROPNAME_WINDOW_Y)).intValue();
            if (r22 == r33 && r02 == r13) {
                return null;
            }
            viewGroup.getLocationInWindow(this.mTempLocation);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view2.getWidth(), view2.getHeight(), Bitmap.Config.ARGB_8888);
            view2.draw(new Canvas(bitmapCreateBitmap));
            final BitmapDrawable bitmapDrawable = new BitmapDrawable(bitmapCreateBitmap);
            final float transitionAlpha = ViewUtils.getTransitionAlpha(view2);
            ViewUtils.setTransitionAlpha(view2, 0.0f);
            ViewUtils.getOverlay(viewGroup).add(bitmapDrawable);
            PathMotion pathMotion = getPathMotion();
            int[] r10 = this.mTempLocation;
            int r122 = r10[0];
            int r102 = r10[1];
            ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(bitmapDrawable, PropertyValuesHolderUtils.ofPointF(DRAWABLE_ORIGIN_PROPERTY, pathMotion.getPath(r22 - r122, r02 - r102, r33 - r122, r13 - r102)));
            objectAnimatorOfPropertyValuesHolder.addListener(new AnimatorListenerAdapter() { // from class: androidx.transition.ChangeBounds.10
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    ViewUtils.getOverlay(viewGroup).remove(bitmapDrawable);
                    ViewUtils.setTransitionAlpha(view2, transitionAlpha);
                }
            });
            return objectAnimatorOfPropertyValuesHolder;
        }
        Rect rect2 = (Rect) transitionValues.values.get(PROPNAME_BOUNDS);
        Rect rect3 = (Rect) transitionValues2.values.get(PROPNAME_BOUNDS);
        int r6 = rect2.left;
        final int r72 = rect3.left;
        int r11 = rect2.top;
        final int r123 = rect3.top;
        int r132 = rect2.right;
        final int r14 = rect3.right;
        int r34 = rect2.bottom;
        final int r15 = rect3.bottom;
        int r52 = r132 - r6;
        int r23 = r34 - r11;
        int r103 = r14 - r72;
        int r42 = r15 - r123;
        Rect rect4 = (Rect) transitionValues.values.get(PROPNAME_CLIP);
        final Rect rect5 = (Rect) transitionValues2.values.get(PROPNAME_CLIP);
        if ((r52 == 0 || r23 == 0) && (r103 == 0 || r42 == 0)) {
            r12 = 0;
        } else {
            r12 = (r6 == r72 && r11 == r123) ? 0 : 1;
            if (r132 != r14 || r34 != r15) {
                r12++;
            }
        }
        if ((rect4 != null && !rect4.equals(rect5)) || (rect4 == null && rect5 != null)) {
            r12++;
        }
        if (r12 <= 0) {
            return null;
        }
        if (this.mResizeClip) {
            view = view2;
            ViewUtils.setLeftTopRightBottom(view, r6, r11, Math.max(r52, r103) + r6, Math.max(r23, r42) + r11);
            ObjectAnimator objectAnimatorOfPointF = (r6 == r72 && r11 == r123) ? null : ObjectAnimatorUtils.ofPointF(view, POSITION_PROPERTY, getPathMotion().getPath(r6, r11, r72, r123));
            if (rect4 == null) {
                r32 = 0;
                rect = new Rect(0, 0, r52, r23);
            } else {
                r32 = 0;
                rect = rect4;
            }
            Rect rect6 = rect5 == null ? new Rect(r32, r32, r103, r42) : rect5;
            if (rect.equals(rect6)) {
                objectAnimator = null;
            } else {
                ViewCompat.setClipBounds(view, rect);
                RectEvaluator rectEvaluator = sRectEvaluator;
                Object[] objArr = new Object[2];
                objArr[r32] = rect;
                objArr[1] = rect6;
                ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(view, "clipBounds", rectEvaluator, objArr);
                objectAnimatorOfObject.addListener(new AnimatorListenerAdapter() { // from class: androidx.transition.ChangeBounds.8
                    private boolean mIsCanceled;

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                        this.mIsCanceled = true;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
                        if (this.mIsCanceled) {
                            return;
                        }
                        ViewCompat.setClipBounds(view, rect5);
                        ViewUtils.setLeftTopRightBottom(view, r72, r123, r14, r15);
                    }
                });
                objectAnimator = objectAnimatorOfObject;
            }
            animatorMergeAnimators = TransitionUtils.mergeAnimators(objectAnimatorOfPointF, objectAnimator);
        } else {
            view = view2;
            ViewUtils.setLeftTopRightBottom(view, r6, r11, r132, r34);
            if (r12 == 2) {
                if (r52 == r103 && r23 == r42) {
                    path = getPathMotion().getPath(r6, r11, r72, r123);
                    property = POSITION_PROPERTY;
                } else {
                    ViewBounds viewBounds = new ViewBounds(view);
                    ObjectAnimator objectAnimatorOfPointF2 = ObjectAnimatorUtils.ofPointF(viewBounds, TOP_LEFT_PROPERTY, getPathMotion().getPath(r6, r11, r72, r123));
                    ObjectAnimator objectAnimatorOfPointF3 = ObjectAnimatorUtils.ofPointF(viewBounds, BOTTOM_RIGHT_PROPERTY, getPathMotion().getPath(r132, r34, r14, r15));
                    AnimatorSet animatorSet = new AnimatorSet();
                    animatorSet.playTogether(objectAnimatorOfPointF2, objectAnimatorOfPointF3);
                    animatorSet.addListener(new AnimatorListenerAdapter(viewBounds) { // from class: androidx.transition.ChangeBounds.7
                        private ViewBounds mViewBounds;
                        final /* synthetic */ ViewBounds val$viewBounds;

                        {
                            this.val$viewBounds = viewBounds;
                            this.mViewBounds = viewBounds;
                        }
                    });
                    animatorMergeAnimators = animatorSet;
                }
            } else if (r6 == r72 && r11 == r123) {
                path = getPathMotion().getPath(r132, r34, r14, r15);
                property = BOTTOM_RIGHT_ONLY_PROPERTY;
            } else {
                path = getPathMotion().getPath(r6, r11, r72, r123);
                property = TOP_LEFT_ONLY_PROPERTY;
            }
            animatorMergeAnimators = ObjectAnimatorUtils.ofPointF(view, property, path);
        }
        if (view.getParent() instanceof ViewGroup) {
            final ViewGroup viewGroup4 = (ViewGroup) view.getParent();
            ViewGroupUtils.suppressLayout(viewGroup4, true);
            addListener(new TransitionListenerAdapter() { // from class: androidx.transition.ChangeBounds.9
                boolean mCanceled = false;

                @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
                public void onTransitionCancel(@NonNull Transition transition) {
                    ViewGroupUtils.suppressLayout(viewGroup4, false);
                    this.mCanceled = true;
                }

                @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
                public void onTransitionEnd(@NonNull Transition transition) {
                    if (!this.mCanceled) {
                        ViewGroupUtils.suppressLayout(viewGroup4, false);
                    }
                    transition.removeListener(this);
                }

                @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
                public void onTransitionPause(@NonNull Transition transition) {
                    ViewGroupUtils.suppressLayout(viewGroup4, false);
                }

                @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
                public void onTransitionResume(@NonNull Transition transition) {
                    ViewGroupUtils.suppressLayout(viewGroup4, true);
                }
            });
        }
        return animatorMergeAnimators;
    }

    public boolean getResizeClip() {
        return this.mResizeClip;
    }

    @Override // androidx.transition.Transition
    @Nullable
    public String[] getTransitionProperties() {
        return sTransitionProperties;
    }

    public void setResizeClip(boolean z10) {
        this.mResizeClip = z10;
    }
}
