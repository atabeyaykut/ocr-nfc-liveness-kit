package androidx.constraintlayout.motion.widget;

import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintSet;
import java.util.HashMap;

/* loaded from: classes.dex */
public class DesignTool implements ProxyInterface {
    private static final boolean DEBUG = false;
    private static final String TAG = "DesignTool";
    static final HashMap<Pair<Integer, Integer>, String> allAttributes;
    static final HashMap<String, String> allMargins;
    private final MotionLayout mMotionLayout;
    private MotionScene mSceneCache;
    private String mLastStartState = null;
    private String mLastEndState = null;
    private int mLastStartStateId = -1;
    private int mLastEndStateId = -1;

    static {
        HashMap<Pair<Integer, Integer>, String> map = new HashMap<>();
        allAttributes = map;
        HashMap<String, String> map2 = new HashMap<>();
        allMargins = map2;
        map.put(Pair.create(4, 4), "layout_constraintBottom_toBottomOf");
        map.put(Pair.create(4, 3), "layout_constraintBottom_toTopOf");
        map.put(Pair.create(3, 4), "layout_constraintTop_toBottomOf");
        map.put(Pair.create(3, 3), "layout_constraintTop_toTopOf");
        map.put(Pair.create(6, 6), "layout_constraintStart_toStartOf");
        map.put(Pair.create(6, 7), "layout_constraintStart_toEndOf");
        map.put(Pair.create(7, 6), "layout_constraintEnd_toStartOf");
        map.put(Pair.create(7, 7), "layout_constraintEnd_toEndOf");
        map.put(Pair.create(1, 1), "layout_constraintLeft_toLeftOf");
        map.put(Pair.create(1, 2), "layout_constraintLeft_toRightOf");
        map.put(Pair.create(2, 2), "layout_constraintRight_toRightOf");
        map.put(Pair.create(2, 1), "layout_constraintRight_toLeftOf");
        map.put(Pair.create(5, 5), "layout_constraintBaseline_toBaselineOf");
        map2.put("layout_constraintBottom_toBottomOf", "layout_marginBottom");
        map2.put("layout_constraintBottom_toTopOf", "layout_marginBottom");
        map2.put("layout_constraintTop_toBottomOf", "layout_marginTop");
        map2.put("layout_constraintTop_toTopOf", "layout_marginTop");
        map2.put("layout_constraintStart_toStartOf", "layout_marginStart");
        map2.put("layout_constraintStart_toEndOf", "layout_marginStart");
        map2.put("layout_constraintEnd_toStartOf", "layout_marginEnd");
        map2.put("layout_constraintEnd_toEndOf", "layout_marginEnd");
        map2.put("layout_constraintLeft_toLeftOf", "layout_marginLeft");
        map2.put("layout_constraintLeft_toRightOf", "layout_marginLeft");
        map2.put("layout_constraintRight_toRightOf", "layout_marginRight");
        map2.put("layout_constraintRight_toLeftOf", "layout_marginRight");
    }

    public DesignTool(MotionLayout motionLayout) {
        this.mMotionLayout = motionLayout;
    }

    private static void Connect(int r82, ConstraintSet constraintSet, View view, HashMap<String, String> map, int r12, int r13) {
        String str = allAttributes.get(Pair.create(Integer.valueOf(r12), Integer.valueOf(r13)));
        String str2 = map.get(str);
        if (str2 != null) {
            String str3 = allMargins.get(str);
            constraintSet.connect(view.getId(), r12, Integer.parseInt(str2), r13, str3 != null ? GetPxFromDp(r82, map.get(str3)) : 0);
        }
    }

    private static int GetPxFromDp(int r32, String str) {
        int r12;
        if (str == null || (r12 = str.indexOf(100)) == -1) {
            return 0;
        }
        return (int) ((Integer.valueOf(str.substring(0, r12)).intValue() * r32) / 160.0f);
    }

    private static void SetAbsolutePositions(int r22, ConstraintSet constraintSet, View view, HashMap<String, String> map) {
        String str = map.get("layout_editor_absoluteX");
        if (str != null) {
            constraintSet.setEditorAbsoluteX(view.getId(), GetPxFromDp(r22, str));
        }
        String str2 = map.get("layout_editor_absoluteY");
        if (str2 != null) {
            constraintSet.setEditorAbsoluteY(view.getId(), GetPxFromDp(r22, str2));
        }
    }

    private static void SetBias(ConstraintSet constraintSet, View view, HashMap<String, String> map, int r52) {
        String str = map.get(r52 == 1 ? "layout_constraintVertical_bias" : "layout_constraintHorizontal_bias");
        if (str != null) {
            if (r52 == 0) {
                constraintSet.setHorizontalBias(view.getId(), Float.parseFloat(str));
            } else if (r52 == 1) {
                constraintSet.setVerticalBias(view.getId(), Float.parseFloat(str));
            }
        }
    }

    private static void SetDimensions(int r12, ConstraintSet constraintSet, View view, HashMap<String, String> map, int r52) {
        String str = map.get(r52 == 1 ? "layout_height" : "layout_width");
        if (str != null) {
            int r13 = !str.equalsIgnoreCase("wrap_content") ? GetPxFromDp(r12, str) : -2;
            int id2 = view.getId();
            if (r52 == 0) {
                constraintSet.constrainWidth(id2, r13);
            } else {
                constraintSet.constrainHeight(id2, r13);
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.ProxyInterface
    public int designAccess(int r32, String str, Object obj, float[] fArr, int r72, float[] fArr2, int r92) {
        MotionController motionController;
        View view = (View) obj;
        if (r32 != 0) {
            MotionLayout motionLayout = this.mMotionLayout;
            if (motionLayout.mScene == null || view == null || (motionController = motionLayout.mFrameArrayList.get(view)) == null) {
                return -1;
            }
        } else {
            motionController = null;
        }
        if (r32 == 0) {
            return 1;
        }
        if (r32 == 1) {
            int duration = this.mMotionLayout.mScene.getDuration() / 16;
            motionController.buildPath(fArr2, duration);
            return duration;
        }
        if (r32 == 2) {
            int duration2 = this.mMotionLayout.mScene.getDuration() / 16;
            motionController.buildKeyFrames(fArr2, null);
            return duration2;
        }
        if (r32 != 3) {
            return -1;
        }
        int duration3 = this.mMotionLayout.mScene.getDuration() / 16;
        return motionController.getAttributeValues(str, fArr2, r92);
    }

    public void disableAutoTransition(boolean z10) {
        this.mMotionLayout.disableAutoTransition(z10);
    }

    public void dumpConstraintSet(String str) {
        MotionLayout motionLayout = this.mMotionLayout;
        if (motionLayout.mScene == null) {
            motionLayout.mScene = this.mSceneCache;
        }
        int r02 = motionLayout.lookUpConstraintId(str);
        System.out.println(" dumping  " + str + " (" + r02 + ")");
        try {
            this.mMotionLayout.mScene.getConstraintSet(r02).dump(this.mMotionLayout.mScene, new int[0]);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public int getAnimationKeyFrames(Object obj, float[] fArr) {
        MotionScene motionScene = this.mMotionLayout.mScene;
        if (motionScene == null) {
            return -1;
        }
        int duration = motionScene.getDuration() / 16;
        MotionController motionController = this.mMotionLayout.mFrameArrayList.get(obj);
        if (motionController == null) {
            return 0;
        }
        motionController.buildKeyFrames(fArr, null);
        return duration;
    }

    public int getAnimationPath(Object obj, float[] fArr, int r52) {
        MotionLayout motionLayout = this.mMotionLayout;
        if (motionLayout.mScene == null) {
            return -1;
        }
        MotionController motionController = motionLayout.mFrameArrayList.get(obj);
        if (motionController == null) {
            return 0;
        }
        motionController.buildPath(fArr, r52);
        return r52;
    }

    public void getAnimationRectangles(Object obj, float[] fArr) {
        MotionScene motionScene = this.mMotionLayout.mScene;
        if (motionScene == null) {
            return;
        }
        int duration = motionScene.getDuration() / 16;
        MotionController motionController = this.mMotionLayout.mFrameArrayList.get(obj);
        if (motionController == null) {
            return;
        }
        motionController.buildRectangles(fArr, duration);
    }

    public String getEndState() {
        int endState = this.mMotionLayout.getEndState();
        if (this.mLastEndStateId == endState) {
            return this.mLastEndState;
        }
        String constraintSetNames = this.mMotionLayout.getConstraintSetNames(endState);
        if (constraintSetNames != null) {
            this.mLastEndState = constraintSetNames;
            this.mLastEndStateId = endState;
        }
        return constraintSetNames;
    }

    public int getKeyFrameInfo(Object obj, int r32, int[] r42) {
        MotionController motionController = this.mMotionLayout.mFrameArrayList.get((View) obj);
        if (motionController == null) {
            return 0;
        }
        return motionController.getKeyFrameInfo(r32, r42);
    }

    @Override // androidx.constraintlayout.motion.widget.ProxyInterface
    public float getKeyFramePosition(Object obj, int r42, float f, float f10) {
        MotionController motionController;
        if ((obj instanceof View) && (motionController = this.mMotionLayout.mFrameArrayList.get((View) obj)) != null) {
            return motionController.getKeyFrameParameter(r42, f, f10);
        }
        return 0.0f;
    }

    public int getKeyFramePositions(Object obj, int[] r32, float[] fArr) {
        MotionController motionController = this.mMotionLayout.mFrameArrayList.get((View) obj);
        if (motionController == null) {
            return 0;
        }
        return motionController.getKeyFramePositions(r32, fArr);
    }

    public Object getKeyframe(int r32, int r42, int r52) {
        MotionLayout motionLayout = this.mMotionLayout;
        MotionScene motionScene = motionLayout.mScene;
        if (motionScene == null) {
            return null;
        }
        return motionScene.getKeyFrame(motionLayout.getContext(), r32, r42, r52);
    }

    public Object getKeyframe(Object obj, int r42, int r52) {
        if (this.mMotionLayout.mScene == null) {
            return null;
        }
        int id2 = ((View) obj).getId();
        MotionLayout motionLayout = this.mMotionLayout;
        return motionLayout.mScene.getKeyFrame(motionLayout.getContext(), r42, id2, r52);
    }

    @Override // androidx.constraintlayout.motion.widget.ProxyInterface
    public Object getKeyframeAtLocation(Object obj, float f, float f10) {
        MotionController motionController;
        View view = (View) obj;
        MotionLayout motionLayout = this.mMotionLayout;
        if (motionLayout.mScene == null) {
            return -1;
        }
        if (view == null || (motionController = motionLayout.mFrameArrayList.get(view)) == null) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        return motionController.getPositionKeyframe(viewGroup.getWidth(), viewGroup.getHeight(), f, f10);
    }

    @Override // androidx.constraintlayout.motion.widget.ProxyInterface
    public Boolean getPositionKeyframe(Object obj, Object obj2, float f, float f10, String[] strArr, float[] fArr) {
        if (!(obj instanceof KeyPositionBase)) {
            return Boolean.FALSE;
        }
        View view = (View) obj2;
        this.mMotionLayout.mFrameArrayList.get(view).positionKeyframe(view, (KeyPositionBase) obj, f, f10, strArr, fArr);
        this.mMotionLayout.rebuildScene();
        this.mMotionLayout.mInTransition = true;
        return Boolean.TRUE;
    }

    public float getProgress() {
        return this.mMotionLayout.getProgress();
    }

    public String getStartState() {
        int startState = this.mMotionLayout.getStartState();
        if (this.mLastStartStateId == startState) {
            return this.mLastStartState;
        }
        String constraintSetNames = this.mMotionLayout.getConstraintSetNames(startState);
        if (constraintSetNames != null) {
            this.mLastStartState = constraintSetNames;
            this.mLastStartStateId = startState;
        }
        return this.mMotionLayout.getConstraintSetNames(startState);
    }

    public String getState() {
        if (this.mLastStartState != null && this.mLastEndState != null) {
            float progress = getProgress();
            if (progress <= 0.01f) {
                return this.mLastStartState;
            }
            if (progress >= 0.99f) {
                return this.mLastEndState;
            }
        }
        return this.mLastStartState;
    }

    @Override // androidx.constraintlayout.motion.widget.ProxyInterface
    public long getTransitionTimeMs() {
        return this.mMotionLayout.getTransitionTimeMs();
    }

    public boolean isInTransition() {
        return (this.mLastStartState == null || this.mLastEndState == null) ? false : true;
    }

    @Override // androidx.constraintlayout.motion.widget.ProxyInterface
    public void setAttributes(int r10, String str, Object obj, Object obj2) {
        View view = (View) obj;
        HashMap map = (HashMap) obj2;
        int r11 = this.mMotionLayout.lookUpConstraintId(str);
        ConstraintSet constraintSet = this.mMotionLayout.mScene.getConstraintSet(r11);
        if (constraintSet == null) {
            return;
        }
        constraintSet.clear(view.getId());
        SetDimensions(r10, constraintSet, view, map, 0);
        SetDimensions(r10, constraintSet, view, map, 1);
        Connect(r10, constraintSet, view, map, 6, 6);
        Connect(r10, constraintSet, view, map, 6, 7);
        Connect(r10, constraintSet, view, map, 7, 7);
        Connect(r10, constraintSet, view, map, 7, 6);
        Connect(r10, constraintSet, view, map, 1, 1);
        Connect(r10, constraintSet, view, map, 1, 2);
        Connect(r10, constraintSet, view, map, 2, 2);
        Connect(r10, constraintSet, view, map, 2, 1);
        Connect(r10, constraintSet, view, map, 3, 3);
        Connect(r10, constraintSet, view, map, 3, 4);
        Connect(r10, constraintSet, view, map, 4, 3);
        Connect(r10, constraintSet, view, map, 4, 4);
        Connect(r10, constraintSet, view, map, 5, 5);
        SetBias(constraintSet, view, map, 0);
        SetBias(constraintSet, view, map, 1);
        SetAbsolutePositions(r10, constraintSet, view, map);
        this.mMotionLayout.updateState(r11, constraintSet);
        this.mMotionLayout.requestLayout();
    }

    @Override // androidx.constraintlayout.motion.widget.ProxyInterface
    public void setKeyFrame(Object obj, int r32, String str, Object obj2) {
        MotionScene motionScene = this.mMotionLayout.mScene;
        if (motionScene != null) {
            motionScene.setKeyframe((View) obj, r32, str, obj2);
            MotionLayout motionLayout = this.mMotionLayout;
            motionLayout.mTransitionGoalPosition = r32 / 100.0f;
            motionLayout.mTransitionLastPosition = 0.0f;
            motionLayout.rebuildScene();
            this.mMotionLayout.evaluate(true);
        }
    }

    @Override // androidx.constraintlayout.motion.widget.ProxyInterface
    public boolean setKeyFramePosition(Object obj, int r52, int r6, float f, float f10) {
        if (!(obj instanceof View)) {
            return false;
        }
        MotionLayout motionLayout = this.mMotionLayout;
        if (motionLayout.mScene != null) {
            MotionController motionController = motionLayout.mFrameArrayList.get(obj);
            MotionLayout motionLayout2 = this.mMotionLayout;
            int r12 = (int) (motionLayout2.mTransitionPosition * 100.0f);
            if (motionController != null) {
                View view = (View) obj;
                if (motionLayout2.mScene.hasKeyFramePosition(view, r12)) {
                    float keyFrameParameter = motionController.getKeyFrameParameter(2, f, f10);
                    float keyFrameParameter2 = motionController.getKeyFrameParameter(5, f, f10);
                    this.mMotionLayout.mScene.setKeyframe(view, r12, "motion:percentX", Float.valueOf(keyFrameParameter));
                    this.mMotionLayout.mScene.setKeyframe(view, r12, "motion:percentY", Float.valueOf(keyFrameParameter2));
                    this.mMotionLayout.rebuildScene();
                    this.mMotionLayout.evaluate(true);
                    this.mMotionLayout.invalidate();
                    return true;
                }
            }
        }
        return false;
    }

    public void setKeyframe(Object obj, String str, Object obj2) {
        if (obj instanceof Key) {
            ((Key) obj).setValue(str, obj2);
            this.mMotionLayout.rebuildScene();
            this.mMotionLayout.mInTransition = true;
        }
    }

    public void setState(String str) {
        if (str == null) {
            str = "motion_base";
        }
        if (this.mLastStartState == str) {
            return;
        }
        this.mLastStartState = str;
        this.mLastEndState = null;
        MotionLayout motionLayout = this.mMotionLayout;
        if (motionLayout.mScene == null) {
            motionLayout.mScene = this.mSceneCache;
        }
        int r32 = motionLayout.lookUpConstraintId(str);
        this.mLastStartStateId = r32;
        if (r32 != 0) {
            if (r32 == this.mMotionLayout.getStartState()) {
                this.mMotionLayout.setProgress(0.0f);
            } else {
                if (r32 != this.mMotionLayout.getEndState()) {
                    this.mMotionLayout.transitionToState(r32);
                }
                this.mMotionLayout.setProgress(1.0f);
            }
        }
        this.mMotionLayout.requestLayout();
    }

    @Override // androidx.constraintlayout.motion.widget.ProxyInterface
    public void setToolPosition(float f) {
        MotionLayout motionLayout = this.mMotionLayout;
        if (motionLayout.mScene == null) {
            motionLayout.mScene = this.mSceneCache;
        }
        motionLayout.setProgress(f);
        this.mMotionLayout.evaluate(true);
        this.mMotionLayout.requestLayout();
        this.mMotionLayout.invalidate();
    }

    public void setTransition(String str, String str2) {
        MotionLayout motionLayout = this.mMotionLayout;
        if (motionLayout.mScene == null) {
            motionLayout.mScene = this.mSceneCache;
        }
        int r02 = motionLayout.lookUpConstraintId(str);
        int r12 = this.mMotionLayout.lookUpConstraintId(str2);
        this.mMotionLayout.setTransition(r02, r12);
        this.mLastStartStateId = r02;
        this.mLastEndStateId = r12;
        this.mLastStartState = str;
        this.mLastEndState = str2;
    }

    public void setViewDebug(Object obj, int r32) {
        MotionController motionController;
        if ((obj instanceof View) && (motionController = this.mMotionLayout.mFrameArrayList.get(obj)) != null) {
            motionController.setDrawPath(r32);
            this.mMotionLayout.invalidate();
        }
    }
}
