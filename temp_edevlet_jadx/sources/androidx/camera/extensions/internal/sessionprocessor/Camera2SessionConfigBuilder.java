package androidx.camera.extensions.internal.sessionprocessor;

import android.hardware.camera2.CaptureRequest;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RequiresApi(21)
/* loaded from: classes.dex */
class Camera2SessionConfigBuilder {
    private int mSessionTemplateId = 1;
    private Map<CaptureRequest.Key<?>, Object> mSessionParameters = new HashMap();
    private List<Camera2OutputConfig> mCamera2OutputConfigs = new ArrayList();

    public static class SessionConfigImpl implements Camera2SessionConfig {
        private final List<Camera2OutputConfig> mCamera2OutputConfigs;
        private final Map<CaptureRequest.Key<?>, Object> mSessionParameters;
        private final int mSessionTemplateId;

        public SessionConfigImpl(int r12, Map<CaptureRequest.Key<?>, Object> map, List<Camera2OutputConfig> list) {
            this.mSessionTemplateId = r12;
            this.mSessionParameters = map;
            this.mCamera2OutputConfigs = list;
        }

        @Override // androidx.camera.extensions.internal.sessionprocessor.Camera2SessionConfig
        @NonNull
        public List<Camera2OutputConfig> getOutputConfigs() {
            return this.mCamera2OutputConfigs;
        }

        @Override // androidx.camera.extensions.internal.sessionprocessor.Camera2SessionConfig
        @NonNull
        public Map<CaptureRequest.Key<?>, Object> getSessionParameters() {
            return this.mSessionParameters;
        }

        @Override // androidx.camera.extensions.internal.sessionprocessor.Camera2SessionConfig
        public int getSessionTemplateId() {
            return this.mSessionTemplateId;
        }
    }

    @NonNull
    public Camera2SessionConfigBuilder addOutputConfig(@NonNull Camera2OutputConfig camera2OutputConfig) {
        this.mCamera2OutputConfigs.add(camera2OutputConfig);
        return this;
    }

    @NonNull
    public <T> Camera2SessionConfigBuilder addSessionParameter(@NonNull CaptureRequest.Key<T> key, @Nullable T t10) {
        this.mSessionParameters.put(key, t10);
        return this;
    }

    @NonNull
    public Camera2SessionConfig build() {
        return new SessionConfigImpl(this.mSessionTemplateId, this.mSessionParameters, this.mCamera2OutputConfigs);
    }

    @NonNull
    public List<Camera2OutputConfig> getCamera2OutputConfigs() {
        return this.mCamera2OutputConfigs;
    }

    @NonNull
    public Map<CaptureRequest.Key<?>, Object> getSessionParameters() {
        return this.mSessionParameters;
    }

    public int getSessionTemplateId() {
        return this.mSessionTemplateId;
    }

    @NonNull
    public Camera2SessionConfigBuilder setSessionTemplateId(int r12) {
        this.mSessionTemplateId = r12;
        return this;
    }
}
