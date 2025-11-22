package androidx.camera.core;

import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* loaded from: classes.dex */
final class ImageReaderFormatRecommender {

    public static abstract class FormatCombo {
        public static FormatCombo create(int r12, int r22) {
            return new AutoValue_ImageReaderFormatRecommender_FormatCombo(r12, r22);
        }

        public abstract int imageAnalysisFormat();

        public abstract int imageCaptureFormat();
    }

    private ImageReaderFormatRecommender() {
    }

    public static FormatCombo chooseCombo() {
        return FormatCombo.create(256, 35);
    }
}
