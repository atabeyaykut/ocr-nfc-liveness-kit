package androidx.camera.extensions.internal.sessionprocessor;

import android.content.Context;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureFailure;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.media.Image;
import android.util.Size;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.camera.camera2.impl.Camera2CameraCaptureResultConverter;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.interop.CaptureRequestOptions;
import androidx.camera.core.impl.CameraCaptureFailure;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.OutputSurface;
import androidx.camera.core.impl.RequestProcessor;
import androidx.camera.core.impl.SessionProcessor;
import androidx.camera.extensions.impl.advanced.Camera2OutputConfigImpl;
import androidx.camera.extensions.impl.advanced.Camera2SessionConfigImpl;
import androidx.camera.extensions.impl.advanced.ImageProcessorImpl;
import androidx.camera.extensions.impl.advanced.ImageReferenceImpl;
import androidx.camera.extensions.impl.advanced.OutputSurfaceImpl;
import androidx.camera.extensions.impl.advanced.RequestProcessorImpl;
import androidx.camera.extensions.impl.advanced.SessionProcessorImpl;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@RequiresApi(21)
/* loaded from: classes.dex */
public class AdvancedSessionProcessor extends SessionProcessorBase {
    private final Context mContext;
    private final SessionProcessorImpl mImpl;

    public static class CallbackAdapter implements RequestProcessor.Callback {
        private final RequestProcessorImpl.Callback mCallback;

        public CallbackAdapter(RequestProcessorImpl.Callback callback) {
            this.mCallback = callback;
        }

        private RequestProcessorImpl.Request getImplRequest(RequestProcessor.Request request) {
            Preconditions.checkArgument(request instanceof RequestAdapter);
            return ((RequestAdapter) request).getImplRequest();
        }

        @Override // androidx.camera.core.impl.RequestProcessor.Callback
        public void onCaptureBufferLost(@NonNull RequestProcessor.Request request, long j10, int r52) {
            this.mCallback.onCaptureBufferLost(getImplRequest(request), j10, r52);
        }

        @Override // androidx.camera.core.impl.RequestProcessor.Callback
        public void onCaptureCompleted(@NonNull RequestProcessor.Request request, @Nullable CameraCaptureResult cameraCaptureResult) {
            CaptureResult captureResult = Camera2CameraCaptureResultConverter.getCaptureResult(cameraCaptureResult);
            Preconditions.checkArgument(captureResult instanceof TotalCaptureResult, "CaptureResult in cameraCaptureResult is not a TotalCaptureResult");
            this.mCallback.onCaptureCompleted(getImplRequest(request), (TotalCaptureResult) captureResult);
        }

        @Override // androidx.camera.core.impl.RequestProcessor.Callback
        public void onCaptureFailed(@NonNull RequestProcessor.Request request, @Nullable CameraCaptureFailure cameraCaptureFailure) {
            CaptureFailure captureFailure = Camera2CameraCaptureResultConverter.getCaptureFailure(cameraCaptureFailure);
            Preconditions.checkArgument(captureFailure != null, "CameraCaptureFailure does not contain CaptureFailure.");
            this.mCallback.onCaptureFailed(getImplRequest(request), captureFailure);
        }

        @Override // androidx.camera.core.impl.RequestProcessor.Callback
        public void onCaptureProgressed(@NonNull RequestProcessor.Request request, @NonNull CameraCaptureResult cameraCaptureResult) {
            CaptureResult captureResult = Camera2CameraCaptureResultConverter.getCaptureResult(cameraCaptureResult);
            Preconditions.checkArgument(captureResult != null, "Cannot get CaptureResult from the cameraCaptureResult ");
            this.mCallback.onCaptureProgressed(getImplRequest(request), captureResult);
        }

        @Override // androidx.camera.core.impl.RequestProcessor.Callback
        public void onCaptureSequenceAborted(int r22) {
            this.mCallback.onCaptureSequenceAborted(r22);
        }

        @Override // androidx.camera.core.impl.RequestProcessor.Callback
        public void onCaptureSequenceCompleted(int r22, long j10) {
            this.mCallback.onCaptureSequenceCompleted(r22, j10);
        }

        @Override // androidx.camera.core.impl.RequestProcessor.Callback
        public void onCaptureStarted(@NonNull RequestProcessor.Request request, long j10, long j11) {
            this.mCallback.onCaptureStarted(getImplRequest(request), j10, j11);
        }
    }

    public static class ImageProcessorAdapter implements ImageProcessor {
        private final ImageProcessorImpl mImpl;

        public ImageProcessorAdapter(ImageProcessorImpl imageProcessorImpl) {
            this.mImpl = imageProcessorImpl;
        }

        @Override // androidx.camera.extensions.internal.sessionprocessor.ImageProcessor
        public void onNextImageAvailable(int r72, long j10, @NonNull ImageReference imageReference, @Nullable String str) {
            this.mImpl.onNextImageAvailable(r72, j10, new ImageReferenceImplAdapter(imageReference), str);
        }
    }

    public static class ImageReferenceImplAdapter implements ImageReferenceImpl {
        private final ImageReference mImageReference;

        public ImageReferenceImplAdapter(ImageReference imageReference) {
            this.mImageReference = imageReference;
        }

        public boolean decrement() {
            return this.mImageReference.decrement();
        }

        @Nullable
        public Image get() {
            return this.mImageReference.get();
        }

        public boolean increment() {
            return this.mImageReference.increment();
        }
    }

    public static class OutputSurfaceImplAdapter implements OutputSurfaceImpl {
        private final OutputSurface mOutputSurface;

        public OutputSurfaceImplAdapter(OutputSurface outputSurface) {
            this.mOutputSurface = outputSurface;
        }

        public int getImageFormat() {
            return this.mOutputSurface.getImageFormat();
        }

        @NonNull
        public Size getSize() {
            return this.mOutputSurface.getSize();
        }

        @NonNull
        public Surface getSurface() {
            return this.mOutputSurface.getSurface();
        }
    }

    public static class RequestAdapter implements RequestProcessor.Request {
        private final RequestProcessorImpl.Request mImplRequest;
        private final Config mParameters;
        private final List<Integer> mTargetOutputConfigIds;
        private final int mTemplateId;

        public RequestAdapter(@NonNull RequestProcessorImpl.Request request) {
            this.mImplRequest = request;
            ArrayList arrayList = new ArrayList();
            Iterator it = request.getTargetOutputConfigIds().iterator();
            while (it.hasNext()) {
                arrayList.add((Integer) it.next());
            }
            this.mTargetOutputConfigIds = arrayList;
            Camera2ImplConfig.Builder builder = new Camera2ImplConfig.Builder();
            for (CaptureRequest.Key key : request.getParameters().keySet()) {
                builder.setCaptureRequestOption(key, request.getParameters().get(key));
            }
            this.mParameters = builder.build();
            this.mTemplateId = request.getTemplateId().intValue();
        }

        @Nullable
        public RequestProcessorImpl.Request getImplRequest() {
            return this.mImplRequest;
        }

        @Override // androidx.camera.core.impl.RequestProcessor.Request
        @NonNull
        public Config getParameters() {
            return this.mParameters;
        }

        @Override // androidx.camera.core.impl.RequestProcessor.Request
        @NonNull
        public List<Integer> getTargetOutputConfigIds() {
            return this.mTargetOutputConfigIds;
        }

        @Override // androidx.camera.core.impl.RequestProcessor.Request
        public int getTemplateId() {
            return this.mTemplateId;
        }
    }

    public class RequestProcessorImplAdapter implements RequestProcessorImpl {
        private final RequestProcessor mRequestProcessor;

        public RequestProcessorImplAdapter(@NonNull RequestProcessor requestProcessor) {
            this.mRequestProcessor = requestProcessor;
        }

        public void abortCaptures() {
            this.mRequestProcessor.abortCaptures();
        }

        public void setImageProcessor(int r32, @NonNull ImageProcessorImpl imageProcessorImpl) {
            AdvancedSessionProcessor.this.setImageProcessor(r32, new ImageProcessorAdapter(imageProcessorImpl));
        }

        public int setRepeating(@NonNull RequestProcessorImpl.Request request, @NonNull RequestProcessorImpl.Callback callback) {
            return this.mRequestProcessor.setRepeating(new RequestAdapter(request), new CallbackAdapter(callback));
        }

        public void stopRepeating() {
            this.mRequestProcessor.stopRepeating();
        }

        public int submit(@NonNull RequestProcessorImpl.Request request, @NonNull RequestProcessorImpl.Callback callback) {
            return this.mRequestProcessor.submit(new RequestAdapter(request), new CallbackAdapter(callback));
        }

        public int submit(@NonNull List<RequestProcessorImpl.Request> list, @NonNull RequestProcessorImpl.Callback callback) {
            ArrayList arrayList = new ArrayList();
            Iterator<RequestProcessorImpl.Request> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new RequestAdapter(it.next()));
            }
            return this.mRequestProcessor.submit(arrayList, new CallbackAdapter(callback));
        }
    }

    public static class SessionProcessorImplCaptureCallbackAdapter implements SessionProcessorImpl.CaptureCallback {
        private final SessionProcessor.CaptureCallback mCaptureCallback;

        public SessionProcessorImplCaptureCallbackAdapter(@NonNull SessionProcessor.CaptureCallback captureCallback) {
            this.mCaptureCallback = captureCallback;
        }

        public void onCaptureFailed(int r22) {
            this.mCaptureCallback.onCaptureFailed(r22);
        }

        public void onCaptureProcessStarted(int r22) {
            this.mCaptureCallback.onCaptureProcessStarted(r22);
        }

        public void onCaptureSequenceAborted(int r22) {
            this.mCaptureCallback.onCaptureSequenceAborted(r22);
        }

        public void onCaptureSequenceCompleted(int r22) {
            this.mCaptureCallback.onCaptureSequenceCompleted(r22);
        }

        public void onCaptureStarted(int r22, long j10) {
            this.mCaptureCallback.onCaptureStarted(r22, j10);
        }
    }

    public AdvancedSessionProcessor(@NonNull SessionProcessorImpl sessionProcessorImpl, @NonNull Context context) {
        this.mImpl = sessionProcessorImpl;
        this.mContext = context;
    }

    private Camera2SessionConfig convertToCamera2SessionConfig(@NonNull Camera2SessionConfigImpl camera2SessionConfigImpl) {
        Camera2SessionConfigBuilder camera2SessionConfigBuilder = new Camera2SessionConfigBuilder();
        Iterator it = camera2SessionConfigImpl.getOutputConfigs().iterator();
        while (it.hasNext()) {
            camera2SessionConfigBuilder.addOutputConfig(Camera2OutputConfigBuilder.fromImpl((Camera2OutputConfigImpl) it.next()).build());
        }
        for (CaptureRequest.Key key : camera2SessionConfigImpl.getSessionParameters().keySet()) {
            camera2SessionConfigBuilder.addSessionParameter(key, camera2SessionConfigImpl.getSessionParameters().get(key));
        }
        camera2SessionConfigBuilder.setSessionTemplateId(camera2SessionConfigImpl.getSessionTemplateId());
        return camera2SessionConfigBuilder.build();
    }

    @Override // androidx.camera.core.impl.SessionProcessor
    public void abortCapture(int r22) {
        this.mImpl.abortCapture(r22);
    }

    @Override // androidx.camera.extensions.internal.sessionprocessor.SessionProcessorBase
    public void deInitSessionInternal() {
        this.mImpl.deInitSession();
    }

    @Override // androidx.camera.extensions.internal.sessionprocessor.SessionProcessorBase
    @NonNull
    public Camera2SessionConfig initSessionInternal(@NonNull String str, @NonNull Map<String, CameraCharacteristics> map, @NonNull OutputSurface outputSurface, @NonNull OutputSurface outputSurface2, @Nullable OutputSurface outputSurface3) {
        return convertToCamera2SessionConfig(this.mImpl.initSession(str, map, this.mContext, new OutputSurfaceImplAdapter(outputSurface), new OutputSurfaceImplAdapter(outputSurface2), outputSurface3 == null ? null : new OutputSurfaceImplAdapter(outputSurface3)));
    }

    @Override // androidx.camera.core.impl.SessionProcessor
    public void onCaptureSessionEnd() {
        this.mImpl.onCaptureSessionEnd();
    }

    @Override // androidx.camera.core.impl.SessionProcessor
    public void onCaptureSessionStart(@NonNull RequestProcessor requestProcessor) {
        this.mImpl.onCaptureSessionStart(new RequestProcessorImplAdapter(requestProcessor));
    }

    @Override // androidx.camera.core.impl.SessionProcessor
    public void setParameters(@NonNull Config config) {
        HashMap map = new HashMap();
        CaptureRequestOptions captureRequestOptionsBuild = CaptureRequestOptions.Builder.from(config).build();
        for (Config.Option option : captureRequestOptionsBuild.listOptions()) {
            map.put((CaptureRequest.Key) option.getToken(), captureRequestOptionsBuild.retrieveOption(option));
        }
        this.mImpl.setParameters(map);
    }

    @Override // androidx.camera.core.impl.SessionProcessor
    public int startCapture(@NonNull SessionProcessor.CaptureCallback captureCallback) {
        return this.mImpl.startCapture(new SessionProcessorImplCaptureCallbackAdapter(captureCallback));
    }

    @Override // androidx.camera.core.impl.SessionProcessor
    public int startRepeating(@NonNull SessionProcessor.CaptureCallback captureCallback) {
        return this.mImpl.startRepeating(new SessionProcessorImplCaptureCallbackAdapter(captureCallback));
    }

    @Override // androidx.camera.core.impl.SessionProcessor
    public void stopRepeating() {
        this.mImpl.stopRepeating();
    }
}
