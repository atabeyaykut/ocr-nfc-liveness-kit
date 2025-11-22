.class public Lorg/jmrtd/cbeff/ISO781611Decoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jmrtd/cbeff/ISO781611;


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private bdbDecoder:Lorg/jmrtd/cbeff/BiometricDataBlockDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jmrtd/cbeff/BiometricDataBlockDecoder<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jmrtd"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jmrtd/cbeff/ISO781611Decoder;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/jmrtd/cbeff/BiometricDataBlockDecoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jmrtd/cbeff/BiometricDataBlockDecoder<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jmrtd/cbeff/ISO781611Decoder;->bdbDecoder:Lorg/jmrtd/cbeff/BiometricDataBlockDecoder;

    return-void
.end method

.method private decodeSMTValue(Ljava/io/InputStream;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/scuba/tlv/TLVInputStream;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/scuba/tlv/TLVInputStream;

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/scuba/tlv/TLVInputStream;

    invoke-direct {v0, p1}, Lnet/sf/scuba/tlv/TLVInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p1}, Lnet/sf/scuba/tlv/TLVInputStream;->readTag()I

    move-result v0

    invoke-virtual {p1}, Lnet/sf/scuba/tlv/TLVInputStream;->readLength()I

    move-result v1

    const/16 v2, 0x81

    if-eq v0, v2, :cond_6

    const/16 v2, 0x85

    if-eq v0, v2, :cond_5

    const/16 v2, 0x8e

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-eq v0, v2, :cond_3

    const/16 v2, 0x9e

    if-eq v0, v2, :cond_1

    sget-object p1, Lorg/jmrtd/cbeff/ISO781611Decoder;->LOGGER:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported data object tag "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-object v5

    :cond_1
    :goto_1
    int-to-long v6, v1

    cmp-long v0, v3, v6

    if-gez v0, :cond_2

    invoke-virtual {p1, v6, v7}, Lnet/sf/scuba/tlv/TLVInputStream;->skip(J)J

    move-result-wide v6

    add-long/2addr v3, v6

    goto :goto_1

    :cond_2
    return-object v5

    :cond_3
    :goto_2
    int-to-long v6, v1

    cmp-long v0, v3, v6

    if-gez v0, :cond_4

    invoke-virtual {p1, v6, v7}, Lnet/sf/scuba/tlv/TLVInputStream;->skip(J)J

    move-result-wide v6

    add-long/2addr v3, v6

    goto :goto_2

    :cond_4
    return-object v5

    :cond_5
    new-instance p1, Ljava/security/AccessControlException;

    const-string v0, "Access denied. Biometric Information Template is statically protected."

    invoke-direct {p1, v0}, Ljava/security/AccessControlException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-virtual {p1}, Lnet/sf/scuba/tlv/TLVInputStream;->readValue()[B

    move-result-object p1

    return-object p1
.end method

.method private readBHT(Ljava/io/InputStream;III)Lorg/jmrtd/cbeff/StandardBiometricHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of p4, p1, Lnet/sf/scuba/tlv/TLVInputStream;

    if-eqz p4, :cond_0

    check-cast p1, Lnet/sf/scuba/tlv/TLVInputStream;

    goto :goto_0

    :cond_0
    new-instance p4, Lnet/sf/scuba/tlv/TLVInputStream;

    invoke-direct {p4, p1}, Lnet/sf/scuba/tlv/TLVInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, p4

    :goto_0
    const/16 p4, 0xa1

    if-eq p2, p4, :cond_1

    sget-object v0, Lorg/jmrtd/cbeff/ISO781611Decoder;->LOGGER:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected tag "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", found "

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const/4 p4, 0x0

    :goto_1
    if-ge p4, p3, :cond_2

    invoke-virtual {p1}, Lnet/sf/scuba/tlv/TLVInputStream;->readTag()I

    move-result v0

    invoke-static {v0}, Lnet/sf/scuba/tlv/TLVUtil;->getTagLength(I)I

    move-result v1

    add-int/2addr v1, p4

    invoke-virtual {p1}, Lnet/sf/scuba/tlv/TLVInputStream;->readLength()I

    move-result p4

    invoke-static {p4}, Lnet/sf/scuba/tlv/TLVUtil;->getLengthLength(I)I

    move-result p4

    add-int/2addr p4, v1

    invoke-virtual {p1}, Lnet/sf/scuba/tlv/TLVInputStream;->readValue()[B

    move-result-object v1

    array-length v2, v1

    add-int/2addr p4, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/jmrtd/cbeff/StandardBiometricHeader;

    invoke-direct {p1, p2}, Lorg/jmrtd/cbeff/StandardBiometricHeader;-><init>(Ljava/util/Map;)V

    return-object p1
.end method

.method private readBIT(IILjava/io/InputStream;I)Lorg/jmrtd/cbeff/CBEFFInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of p2, p3, Lnet/sf/scuba/tlv/TLVInputStream;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    move-object p2, p3

    .line 6
    check-cast p2, Lnet/sf/scuba/tlv/TLVInputStream;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance p2, Lnet/sf/scuba/tlv/TLVInputStream;

    .line 10
    .line 11
    invoke-direct {p2, p3}, Lnet/sf/scuba/tlv/TLVInputStream;-><init>(Ljava/io/InputStream;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    const/16 v0, 0x7f60

    .line 15
    .line 16
    if-ne p1, v0, :cond_3

    .line 17
    .line 18
    invoke-virtual {p2}, Lnet/sf/scuba/tlv/TLVInputStream;->readTag()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {p2}, Lnet/sf/scuba/tlv/TLVInputStream;->readLength()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    const/16 v0, 0x7d

    .line 27
    .line 28
    if-ne p1, v0, :cond_1

    .line 29
    .line 30
    invoke-direct {p0, p3, p1, p2, p4}, Lorg/jmrtd/cbeff/ISO781611Decoder;->readStaticallyProtectedBIT(Ljava/io/InputStream;III)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    return-object p1

    .line 35
    :cond_1
    and-int/lit16 v0, p1, 0xa0

    .line 36
    .line 37
    const/16 v1, 0xa0

    .line 38
    .line 39
    if-ne v0, v1, :cond_2

    .line 40
    .line 41
    invoke-direct {p0, p3, p1, p2, p4}, Lorg/jmrtd/cbeff/ISO781611Decoder;->readBHT(Ljava/io/InputStream;III)Lorg/jmrtd/cbeff/StandardBiometricHeader;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {p0, p3, p1, p4}, Lorg/jmrtd/cbeff/ISO781611Decoder;->readBiometricDataBlock(Ljava/io/InputStream;Lorg/jmrtd/cbeff/StandardBiometricHeader;I)Lorg/jmrtd/cbeff/BiometricDataBlock;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance p2, Lorg/jmrtd/cbeff/SimpleCBEFFInfo;

    .line 50
    .line 51
    invoke-direct {p2, p1}, Lorg/jmrtd/cbeff/SimpleCBEFFInfo;-><init>(Lorg/jmrtd/cbeff/BiometricDataBlock;)V

    .line 52
    .line 53
    .line 54
    return-object p2

    .line 55
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    new-instance p3, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string p4, "Unsupported template tag: "

    .line 60
    .line 61
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {p1, p3}, Lab/b;->c(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p2

    .line 72
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 73
    .line 74
    new-instance p3, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v1, "Expected tag BIOMETRIC_INFORMATION_TEMPLATE_TAG ("

    .line 77
    .line 78
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v0, "), found "

    .line 89
    .line 90
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string p1, ", index is "

    .line 101
    .line 102
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p2
.end method

.method private readBIT(Ljava/io/InputStream;I)Lorg/jmrtd/cbeff/CBEFFInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/scuba/tlv/TLVInputStream;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lnet/sf/scuba/tlv/TLVInputStream;

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/scuba/tlv/TLVInputStream;

    invoke-direct {v0, p1}, Lnet/sf/scuba/tlv/TLVInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVInputStream;->readTag()I

    move-result v1

    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVInputStream;->readLength()I

    move-result v0

    invoke-direct {p0, v1, v0, p1, p2}, Lorg/jmrtd/cbeff/ISO781611Decoder;->readBIT(IILjava/io/InputStream;I)Lorg/jmrtd/cbeff/CBEFFInfo;

    move-result-object p1

    return-object p1
.end method

.method private readBITGroup(IILjava/io/InputStream;)Lorg/jmrtd/cbeff/ComplexCBEFFInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of p2, p3, Lnet/sf/scuba/tlv/TLVInputStream;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    move-object p2, p3

    .line 6
    check-cast p2, Lnet/sf/scuba/tlv/TLVInputStream;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance p2, Lnet/sf/scuba/tlv/TLVInputStream;

    .line 10
    .line 11
    invoke-direct {p2, p3}, Lnet/sf/scuba/tlv/TLVInputStream;-><init>(Ljava/io/InputStream;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    new-instance v0, Lorg/jmrtd/cbeff/ComplexCBEFFInfo;

    .line 15
    .line 16
    invoke-direct {v0}, Lorg/jmrtd/cbeff/ComplexCBEFFInfo;-><init>()V

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x7f61

    .line 20
    .line 21
    if-ne p1, v1, :cond_4

    .line 22
    .line 23
    invoke-virtual {p2}, Lnet/sf/scuba/tlv/TLVInputStream;->readTag()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const/4 v1, 0x2

    .line 28
    if-ne p1, v1, :cond_3

    .line 29
    .line 30
    invoke-virtual {p2}, Lnet/sf/scuba/tlv/TLVInputStream;->readLength()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const/4 v1, 0x1

    .line 35
    if-ne p1, v1, :cond_2

    .line 36
    .line 37
    invoke-virtual {p2}, Lnet/sf/scuba/tlv/TLVInputStream;->readValue()[B

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const/4 p2, 0x0

    .line 42
    aget-byte p1, p1, p2

    .line 43
    .line 44
    and-int/lit16 p1, p1, 0xff

    .line 45
    .line 46
    :goto_1
    if-ge p2, p1, :cond_1

    .line 47
    .line 48
    invoke-direct {p0, p3, p2}, Lorg/jmrtd/cbeff/ISO781611Decoder;->readBIT(Ljava/io/InputStream;I)Lorg/jmrtd/cbeff/CBEFFInfo;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Lorg/jmrtd/cbeff/ComplexCBEFFInfo;->add(Lorg/jmrtd/cbeff/CBEFFInfo;)V

    .line 53
    .line 54
    .line 55
    add-int/lit8 p2, p2, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    return-object v0

    .line 59
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    const-string p3, "BIOMETRIC_INFO_COUNT should have length 1, found length "

    .line 62
    .line 63
    invoke-static {p3, p1}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p2

    .line 71
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 72
    .line 73
    new-instance p3, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v0, "Expected tag BIOMETRIC_INFO_COUNT_TAG ("

    .line 76
    .line 77
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v0, ") in CBEFF structure, found "

    .line 88
    .line 89
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p2

    .line 107
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 108
    .line 109
    new-instance p3, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v0, "Expected tag "

    .line 112
    .line 113
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v0, ", found "

    .line 124
    .line 125
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p2
.end method

.method private readBITGroup(Ljava/io/InputStream;)Lorg/jmrtd/cbeff/ComplexCBEFFInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/scuba/tlv/TLVInputStream;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lnet/sf/scuba/tlv/TLVInputStream;

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/scuba/tlv/TLVInputStream;

    invoke-direct {v0, p1}, Lnet/sf/scuba/tlv/TLVInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVInputStream;->readTag()I

    move-result v1

    const/16 v2, 0x7f61

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVInputStream;->readLength()I

    move-result v0

    invoke-direct {p0, v1, v0, p1}, Lorg/jmrtd/cbeff/ISO781611Decoder;->readBITGroup(IILjava/io/InputStream;)Lorg/jmrtd/cbeff/ComplexCBEFFInfo;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Expected tag "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", found "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readBiometricDataBlock(Ljava/io/InputStream;Lorg/jmrtd/cbeff/StandardBiometricHeader;I)Lorg/jmrtd/cbeff/BiometricDataBlock;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/scuba/tlv/TLVInputStream;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lnet/sf/scuba/tlv/TLVInputStream;

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/scuba/tlv/TLVInputStream;

    invoke-direct {v0, p1}, Lnet/sf/scuba/tlv/TLVInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVInputStream;->readTag()I

    move-result v1

    const/16 v2, 0x5f2e

    if-eq v1, v2, :cond_2

    const/16 v3, 0x7f2e

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Expected tag BIOMETRIC_DATA_BLOCK_TAG ("

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ") or BIOMETRIC_DATA_BLOCK_TAG_ALT ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "), found "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVInputStream;->readLength()I

    move-result v0

    iget-object v1, p0, Lorg/jmrtd/cbeff/ISO781611Decoder;->bdbDecoder:Lorg/jmrtd/cbeff/BiometricDataBlockDecoder;

    invoke-interface {v1, p1, p2, p3, v0}, Lorg/jmrtd/cbeff/BiometricDataBlockDecoder;->decode(Ljava/io/InputStream;Lorg/jmrtd/cbeff/StandardBiometricHeader;II)Lorg/jmrtd/cbeff/BiometricDataBlock;

    move-result-object p1

    return-object p1
.end method

.method private readStaticallyProtectedBIT(Ljava/io/InputStream;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p2, Lnet/sf/scuba/tlv/TLVInputStream;

    new-instance p3, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, p1}, Lorg/jmrtd/cbeff/ISO781611Decoder;->decodeSMTValue(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p2, p3}, Lnet/sf/scuba/tlv/TLVInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {p2}, Lnet/sf/scuba/tlv/TLVInputStream;->readTag()I

    move-result p3

    invoke-virtual {p2}, Lnet/sf/scuba/tlv/TLVInputStream;->readLength()I

    move-result v0

    invoke-direct {p0, p2, p3, v0, p4}, Lorg/jmrtd/cbeff/ISO781611Decoder;->readBHT(Ljava/io/InputStream;III)Lorg/jmrtd/cbeff/StandardBiometricHeader;

    move-result-object p3

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, p1}, Lorg/jmrtd/cbeff/ISO781611Decoder;->decodeSMTValue(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0, p3, p4}, Lorg/jmrtd/cbeff/ISO781611Decoder;->readBiometricDataBlock(Ljava/io/InputStream;Lorg/jmrtd/cbeff/StandardBiometricHeader;I)Lorg/jmrtd/cbeff/BiometricDataBlock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Lnet/sf/scuba/tlv/TLVInputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lnet/sf/scuba/tlv/TLVInputStream;->close()V

    throw p1
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;)Lorg/jmrtd/cbeff/ComplexCBEFFInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/jmrtd/cbeff/ISO781611Decoder;->readBITGroup(Ljava/io/InputStream;)Lorg/jmrtd/cbeff/ComplexCBEFFInfo;

    move-result-object p1

    return-object p1
.end method
