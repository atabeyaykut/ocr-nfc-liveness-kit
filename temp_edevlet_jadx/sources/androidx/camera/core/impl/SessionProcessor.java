package androidx.camera.core.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.camera.core.CameraInfo;

@RequiresApi(21)
/* loaded from: classes.dex */
public interface SessionProcessor {

    public interface CaptureCallback {
        void onCaptureFailed(int r12);

        void onCaptureProcessStarted(int r12);

        void onCaptureSequenceAborted(int r12);

        void onCaptureSequenceCompleted(int r12);

        void onCaptureStarted(int r12, long j10);
    }

    void abortCapture(int r12);

    void deInitSession();

    @NonNull
    SessionConfig initSession(@NonNull CameraInfo cameraInfo, @NonNull OutputSurface outputSurface, @NonNull OutputSurface outputSurface2, @Nullable OutputSurface outputSurface3);

    void onCaptureSessionEnd();

    void onCaptureSessionStart(@NonNull RequestProcessor requestProcessor);

    void setParameters(@NonNull Config config);

    int startCapture(@NonNull CaptureCallback captureCallback);

    int startRepeating(@NonNull CaptureCallback captureCallback);

    void stopRepeating();
}
