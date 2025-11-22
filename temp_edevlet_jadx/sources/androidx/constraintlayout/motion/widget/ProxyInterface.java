package androidx.constraintlayout.motion.widget;

/* loaded from: classes.dex */
interface ProxyInterface {
    int designAccess(int r12, String str, Object obj, float[] fArr, int r52, float[] fArr2, int r72);

    float getKeyFramePosition(Object obj, int r22, float f, float f10);

    Object getKeyframeAtLocation(Object obj, float f, float f10);

    Boolean getPositionKeyframe(Object obj, Object obj2, float f, float f10, String[] strArr, float[] fArr);

    long getTransitionTimeMs();

    void setAttributes(int r12, String str, Object obj, Object obj2);

    void setKeyFrame(Object obj, int r22, String str, Object obj2);

    boolean setKeyFramePosition(Object obj, int r22, int r32, float f, float f10);

    void setToolPosition(float f);
}
