package androidx.camera.core.impl;

import android.media.CamcorderProfile;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* loaded from: classes.dex */
public abstract class CamcorderProfileProxy {
    public static int CODEC_PROFILE_NONE = -1;

    @NonNull
    public static CamcorderProfileProxy create(int r14, int r15, int r16, int r17, int r18, int r19, int r20, int r21, int r22, int r23, int r24, int r25) {
        return new AutoValue_CamcorderProfileProxy(r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25);
    }

    @NonNull
    public static CamcorderProfileProxy fromCamcorderProfile(@NonNull CamcorderProfile camcorderProfile) {
        return new AutoValue_CamcorderProfileProxy(camcorderProfile.duration, camcorderProfile.quality, camcorderProfile.fileFormat, camcorderProfile.videoCodec, camcorderProfile.videoBitRate, camcorderProfile.videoFrameRate, camcorderProfile.videoFrameWidth, camcorderProfile.videoFrameHeight, camcorderProfile.audioCodec, camcorderProfile.audioBitRate, camcorderProfile.audioSampleRate, camcorderProfile.audioChannels);
    }

    public abstract int getAudioBitRate();

    public abstract int getAudioChannels();

    public abstract int getAudioCodec();

    @Nullable
    public String getAudioCodecMimeType() {
        switch (getAudioCodec()) {
            case 1:
                return "audio/3gpp";
            case 2:
                return "audio/amr-wb";
            case 3:
            case 4:
            case 5:
                return "audio/mp4a-latm";
            case 6:
                return "audio/vorbis";
            case 7:
                return "audio/opus";
            default:
                return null;
        }
    }

    public abstract int getAudioSampleRate();

    public abstract int getDuration();

    public abstract int getFileFormat();

    public abstract int getQuality();

    public int getRequiredAudioProfile() {
        int audioCodec = getAudioCodec();
        if (audioCodec == 3) {
            return 2;
        }
        if (audioCodec == 4) {
            return 5;
        }
        if (audioCodec != 5) {
            return CODEC_PROFILE_NONE;
        }
        return 39;
    }

    public abstract int getVideoBitRate();

    public abstract int getVideoCodec();

    @Nullable
    public String getVideoCodecMimeType() {
        int videoCodec = getVideoCodec();
        if (videoCodec == 1) {
            return "video/3gpp";
        }
        if (videoCodec == 2) {
            return "video/avc";
        }
        if (videoCodec == 3) {
            return "video/mp4v-es";
        }
        if (videoCodec == 4) {
            return "video/x-vnd.on2.vp8";
        }
        if (videoCodec != 5) {
            return null;
        }
        return "video/hevc";
    }

    public abstract int getVideoFrameHeight();

    public abstract int getVideoFrameRate();

    public abstract int getVideoFrameWidth();
}
