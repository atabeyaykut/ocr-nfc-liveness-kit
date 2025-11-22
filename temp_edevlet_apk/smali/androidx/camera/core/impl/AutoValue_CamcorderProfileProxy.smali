.class final Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;
.super Landroidx/camera/core/impl/CamcorderProfileProxy;
.source "SourceFile"


# instance fields
.field private final audioBitRate:I

.field private final audioChannels:I

.field private final audioCodec:I

.field private final audioSampleRate:I

.field private final duration:I

.field private final fileFormat:I

.field private final quality:I

.field private final videoBitRate:I

.field private final videoCodec:I

.field private final videoFrameHeight:I

.field private final videoFrameRate:I

.field private final videoFrameWidth:I


# direct methods
.method public constructor <init>(IIIIIIIIIIII)V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/core/impl/CamcorderProfileProxy;-><init>()V

    iput p1, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->duration:I

    iput p2, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->quality:I

    iput p3, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->fileFormat:I

    iput p4, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->videoCodec:I

    iput p5, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->videoBitRate:I

    iput p6, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->videoFrameRate:I

    iput p7, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->videoFrameWidth:I

    iput p8, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->videoFrameHeight:I

    iput p9, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->audioCodec:I

    iput p10, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->audioBitRate:I

    iput p11, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->audioSampleRate:I

    iput p12, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->audioChannels:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/core/impl/CamcorderProfileProxy;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Landroidx/camera/core/impl/CamcorderProfileProxy;

    iget v1, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->duration:I

    invoke-virtual {p1}, Landroidx/camera/core/impl/CamcorderProfileProxy;->getDuration()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->quality:I

    invoke-virtual {p1}, Landroidx/camera/core/impl/CamcorderProfileProxy;->getQuality()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->fileFormat:I

    invoke-virtual {p1}, Landroidx/camera/core/impl/CamcorderProfileProxy;->getFileFormat()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->videoCodec:I

    invoke-virtual {p1}, Landroidx/camera/core/impl/CamcorderProfileProxy;->getVideoCodec()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->videoBitRate:I

    invoke-virtual {p1}, Landroidx/camera/core/impl/CamcorderProfileProxy;->getVideoBitRate()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->videoFrameRate:I

    invoke-virtual {p1}, Landroidx/camera/core/impl/CamcorderProfileProxy;->getVideoFrameRate()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->videoFrameWidth:I

    invoke-virtual {p1}, Landroidx/camera/core/impl/CamcorderProfileProxy;->getVideoFrameWidth()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->videoFrameHeight:I

    invoke-virtual {p1}, Landroidx/camera/core/impl/CamcorderProfileProxy;->getVideoFrameHeight()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->audioCodec:I

    invoke-virtual {p1}, Landroidx/camera/core/impl/CamcorderProfileProxy;->getAudioCodec()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->audioBitRate:I

    invoke-virtual {p1}, Landroidx/camera/core/impl/CamcorderProfileProxy;->getAudioBitRate()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->audioSampleRate:I

    invoke-virtual {p1}, Landroidx/camera/core/impl/CamcorderProfileProxy;->getAudioSampleRate()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->audioChannels:I

    invoke-virtual {p1}, Landroidx/camera/core/impl/CamcorderProfileProxy;->getAudioChannels()I

    move-result p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getAudioBitRate()I
    .locals 1

    iget v0, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->audioBitRate:I

    return v0
.end method

.method public getAudioChannels()I
    .locals 1

    iget v0, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->audioChannels:I

    return v0
.end method

.method public getAudioCodec()I
    .locals 1

    iget v0, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->audioCodec:I

    return v0
.end method

.method public getAudioSampleRate()I
    .locals 1

    iget v0, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->audioSampleRate:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->duration:I

    return v0
.end method

.method public getFileFormat()I
    .locals 1

    iget v0, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->fileFormat:I

    return v0
.end method

.method public getQuality()I
    .locals 1

    iget v0, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->quality:I

    return v0
.end method

.method public getVideoBitRate()I
    .locals 1

    iget v0, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->videoBitRate:I

    return v0
.end method

.method public getVideoCodec()I
    .locals 1

    iget v0, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->videoCodec:I

    return v0
.end method

.method public getVideoFrameHeight()I
    .locals 1

    iget v0, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->videoFrameHeight:I

    return v0
.end method

.method public getVideoFrameRate()I
    .locals 1

    iget v0, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->videoFrameRate:I

    return v0
.end method

.method public getVideoFrameWidth()I
    .locals 1

    iget v0, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->videoFrameWidth:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->duration:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    iget v2, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->quality:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->fileFormat:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->videoCodec:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->videoBitRate:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->videoFrameRate:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->videoFrameWidth:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->videoFrameHeight:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->audioCodec:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->audioBitRate:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->audioSampleRate:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v1, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->audioChannels:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CamcorderProfileProxy{duration="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->duration:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", quality="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->quality:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", fileFormat="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->fileFormat:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", videoCodec="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->videoCodec:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", videoBitRate="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->videoBitRate:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", videoFrameRate="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->videoFrameRate:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", videoFrameWidth="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->videoFrameWidth:I

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", videoFrameHeight="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->videoFrameHeight:I

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", audioCodec="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->audioCodec:I

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", audioBitRate="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->audioBitRate:I

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ", audioSampleRate="

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->audioSampleRate:I

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, ", audioChannels="

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget v1, p0, Landroidx/camera/core/impl/AutoValue_CamcorderProfileProxy;->audioChannels:I

    .line 119
    .line 120
    const-string v2, "}"

    .line 121
    .line 122
    invoke-static {v0, v1, v2}, Landroidx/browser/browseractions/a;->b(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    return-object v0
.end method
