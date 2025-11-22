package androidx.constraintlayout.core.state;

/* loaded from: classes.dex */
public interface RegistryCallback {
    String currentLayoutInformation();

    String currentMotionScene();

    long getLastModified();

    void onDimensions(int r12, int r22);

    void onNewMotionScene(String str);

    void onProgress(float f);

    void setDrawDebug(int r12);

    void setLayoutInformationMode(int r12);
}
