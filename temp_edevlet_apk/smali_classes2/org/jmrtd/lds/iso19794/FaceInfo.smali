.class public Lorg/jmrtd/lds/iso19794/FaceInfo;
.super Lorg/jmrtd/lds/AbstractListInfo;
.source "SourceFile"

# interfaces
.implements Lorg/jmrtd/cbeff/BiometricDataBlock;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jmrtd/lds/AbstractListInfo<",
        "Lorg/jmrtd/lds/iso19794/FaceImageInfo;",
        ">;",
        "Lorg/jmrtd/cbeff/BiometricDataBlock;"
    }
.end annotation


# static fields
.field private static final FORMAT_IDENTIFIER:I = 0x46414300

.field private static final FORMAT_OWNER_VALUE:I = 0x101

.field private static final FORMAT_TYPE_VALUE:I = 0x8

.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final VERSION_NUMBER:I = 0x30313000

.field private static final serialVersionUID:J = -0x54014f0654c74495L


# instance fields
.field private sbh:Lorg/jmrtd/cbeff/StandardBiometricHeader;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jmrtd"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jmrtd/lds/iso19794/FaceInfo;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/jmrtd/lds/iso19794/FaceInfo;-><init>(Lorg/jmrtd/cbeff/StandardBiometricHeader;Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jmrtd/lds/iso19794/FaceImageInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/jmrtd/lds/iso19794/FaceInfo;-><init>(Lorg/jmrtd/cbeff/StandardBiometricHeader;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lorg/jmrtd/cbeff/StandardBiometricHeader;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/jmrtd/lds/AbstractListInfo;-><init>()V

    iput-object p1, p0, Lorg/jmrtd/lds/iso19794/FaceInfo;->sbh:Lorg/jmrtd/cbeff/StandardBiometricHeader;

    invoke-virtual {p0, p2}, Lorg/jmrtd/lds/iso19794/FaceInfo;->readObject(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Lorg/jmrtd/cbeff/StandardBiometricHeader;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jmrtd/cbeff/StandardBiometricHeader;",
            "Ljava/util/List<",
            "Lorg/jmrtd/lds/iso19794/FaceImageInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/jmrtd/lds/AbstractListInfo;-><init>()V

    iput-object p1, p0, Lorg/jmrtd/lds/iso19794/FaceInfo;->sbh:Lorg/jmrtd/cbeff/StandardBiometricHeader;

    invoke-virtual {p0, p2}, Lorg/jmrtd/lds/AbstractListInfo;->addAll(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public addFaceImageInfo(Lorg/jmrtd/lds/iso19794/FaceImageInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jmrtd/lds/AbstractListInfo;->add(Ljava/io/Serializable;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/jmrtd/lds/AbstractListInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    check-cast p1, Lorg/jmrtd/lds/iso19794/FaceInfo;

    iget-object v1, p0, Lorg/jmrtd/lds/iso19794/FaceInfo;->sbh:Lorg/jmrtd/cbeff/StandardBiometricHeader;

    iget-object p1, p1, Lorg/jmrtd/lds/iso19794/FaceInfo;->sbh:Lorg/jmrtd/cbeff/StandardBiometricHeader;

    if-nez v1, :cond_4

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    if-eq v1, p1, :cond_6

    invoke-virtual {v1, p1}, Lorg/jmrtd/cbeff/StandardBiometricHeader;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    return v0
.end method

.method public getFaceImageInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jmrtd/lds/iso19794/FaceImageInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jmrtd/lds/AbstractListInfo;->getSubRecords()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStandardBiometricHeader()Lorg/jmrtd/cbeff/StandardBiometricHeader;
    .locals 6

    iget-object v0, p0, Lorg/jmrtd/lds/iso19794/FaceInfo;->sbh:Lorg/jmrtd/cbeff/StandardBiometricHeader;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput-byte v3, v1, v2

    new-array v0, v0, [B

    aput-byte v2, v0, v2

    new-array v2, v3, [B

    fill-array-data v2, :array_0

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    const/16 v5, 0x81

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x82

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x87

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x88

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/jmrtd/cbeff/StandardBiometricHeader;

    invoke-direct {v0, v4}, Lorg/jmrtd/cbeff/StandardBiometricHeader;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/jmrtd/lds/iso19794/FaceInfo;->sbh:Lorg/jmrtd/cbeff/StandardBiometricHeader;

    :cond_0
    iget-object v0, p0, Lorg/jmrtd/lds/iso19794/FaceInfo;->sbh:Lorg/jmrtd/cbeff/StandardBiometricHeader;

    return-object v0

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x8t
    .end array-data
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lorg/jmrtd/lds/AbstractListInfo;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/jmrtd/lds/iso19794/FaceInfo;->sbh:Lorg/jmrtd/cbeff/StandardBiometricHeader;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/jmrtd/cbeff/StandardBiometricHeader;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public readObject(Ljava/io/InputStream;)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    instance-of v2, v1, Ljava/io/DataInputStream;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Ljava/io/DataInputStream;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v2, Ljava/io/DataInputStream;

    .line 14
    .line 15
    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const v4, 0x46414300    # 12368.75f

    .line 23
    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    if-eq v3, v4, :cond_3

    .line 27
    .line 28
    sget-object v4, Lorg/jmrtd/lds/iso19794/FaceInfo;->LOGGER:Ljava/util/logging/Logger;

    .line 29
    .line 30
    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 31
    .line 32
    new-instance v7, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v8, "\'FAC\' marker expected! Found "

    .line 35
    .line 36
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    invoke-virtual {v4, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/16 v4, 0xc

    .line 54
    .line 55
    if-ne v3, v4, :cond_3

    .line 56
    .line 57
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 58
    .line 59
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance v4, Ljava/io/DataOutputStream;

    .line 63
    .line 64
    invoke-direct {v4, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    invoke-virtual {v4, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 75
    .line 76
    .line 77
    const/4 v4, 0x0

    .line 78
    :goto_1
    if-ge v4, v3, :cond_2

    .line 79
    .line 80
    const/16 v6, 0x800

    .line 81
    .line 82
    new-array v6, v6, [B

    .line 83
    .line 84
    invoke-virtual {v2, v6}, Ljava/io/DataInputStream;->read([B)I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    if-gez v7, :cond_1

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_1
    invoke-virtual {v1, v6}, Ljava/io/OutputStream;->write([B)V

    .line 92
    .line 93
    .line 94
    add-int/2addr v4, v7

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    :goto_2
    new-instance v2, Lorg/jmrtd/lds/iso19794/FaceImageInfo;

    .line 97
    .line 98
    move-object v6, v2

    .line 99
    sget-object v7, Lnet/sf/scuba/data/Gender;->UNKNOWN:Lnet/sf/scuba/data/Gender;

    .line 100
    .line 101
    sget-object v8, Lorg/jmrtd/lds/iso19794/FaceImageInfo$EyeColor;->UNSPECIFIED:Lorg/jmrtd/lds/iso19794/FaceImageInfo$EyeColor;

    .line 102
    .line 103
    const/4 v9, 0x0

    .line 104
    const/4 v10, 0x0

    .line 105
    const/4 v11, 0x0

    .line 106
    const/4 v4, 0x3

    .line 107
    new-array v13, v4, [I

    .line 108
    .line 109
    move-object v12, v13

    .line 110
    fill-array-data v13, :array_0

    .line 111
    .line 112
    .line 113
    new-array v4, v4, [I

    .line 114
    .line 115
    move-object v13, v4

    .line 116
    fill-array-data v4, :array_1

    .line 117
    .line 118
    .line 119
    const/4 v14, 0x1

    .line 120
    const/4 v15, 0x0

    .line 121
    const/16 v16, 0x0

    .line 122
    .line 123
    const/16 v17, 0x0

    .line 124
    .line 125
    const/16 v18, 0x0

    .line 126
    .line 127
    new-array v4, v5, [Lorg/jmrtd/lds/iso19794/FaceImageInfo$FeaturePoint;

    .line 128
    .line 129
    move-object/from16 v19, v4

    .line 130
    .line 131
    const/16 v20, 0x0

    .line 132
    .line 133
    const/16 v21, 0x0

    .line 134
    .line 135
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 136
    .line 137
    move-object/from16 v22, v4

    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 144
    .line 145
    .line 146
    const/16 v24, 0x1

    .line 147
    .line 148
    move/from16 v23, v3

    .line 149
    .line 150
    invoke-direct/range {v6 .. v24}, Lorg/jmrtd/lds/iso19794/FaceImageInfo;-><init>(Lnet/sf/scuba/data/Gender;Lorg/jmrtd/lds/iso19794/FaceImageInfo$EyeColor;III[I[IIIIII[Lorg/jmrtd/lds/iso19794/FaceImageInfo$FeaturePoint;IILjava/io/InputStream;II)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v2}, Lorg/jmrtd/lds/AbstractListInfo;->add(Ljava/io/Serializable;)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    const v4, 0x30313000

    .line 162
    .line 163
    .line 164
    if-ne v3, v4, :cond_6

    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    int-to-long v3, v3

    .line 171
    const-wide v6, 0xffffffffL

    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    and-long/2addr v3, v6

    .line 177
    const-wide/16 v6, 0xe

    .line 178
    .line 179
    sub-long/2addr v3, v6

    .line 180
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    const-wide/16 v6, 0x0

    .line 185
    .line 186
    :goto_3
    if-ge v5, v2, :cond_4

    .line 187
    .line 188
    new-instance v8, Lorg/jmrtd/lds/iso19794/FaceImageInfo;

    .line 189
    .line 190
    invoke-direct {v8, v1}, Lorg/jmrtd/lds/iso19794/FaceImageInfo;-><init>(Ljava/io/InputStream;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v8}, Lorg/jmrtd/lds/iso19794/FaceImageInfo;->getRecordLength()J

    .line 194
    .line 195
    .line 196
    move-result-wide v9

    .line 197
    add-long/2addr v6, v9

    .line 198
    invoke-virtual {v0, v8}, Lorg/jmrtd/lds/AbstractListInfo;->add(Ljava/io/Serializable;)V

    .line 199
    .line 200
    .line 201
    add-int/lit8 v5, v5, 0x1

    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_4
    cmp-long v1, v3, v6

    .line 205
    .line 206
    if-eqz v1, :cond_5

    .line 207
    .line 208
    sget-object v1, Lorg/jmrtd/lds/iso19794/FaceInfo;->LOGGER:Ljava/util/logging/Logger;

    .line 209
    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    const-string v5, "ConstructedDataLength and dataLength differ: dataLength = "

    .line 213
    .line 214
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string v3, ", constructedDataLength = "

    .line 221
    .line 222
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    :cond_5
    return-void

    .line 236
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 237
    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    const-string v4, "\'010\' version number expected! Found "

    .line 241
    .line 242
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-static {v3, v2}, Lab/b;->c(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw v1

    .line 253
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public removeFaceImageInfo(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jmrtd/lds/AbstractListInfo;->remove(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FaceInfo ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jmrtd/lds/AbstractListInfo;->getSubRecords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jmrtd/lds/iso19794/FaceImageInfo;

    invoke-virtual {v2}, Lorg/jmrtd/lds/iso19794/FaceImageInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeObject(Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jmrtd/lds/AbstractListInfo;->getSubRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jmrtd/lds/iso19794/FaceImageInfo;

    invoke-virtual {v4}, Lorg/jmrtd/lds/iso19794/FaceImageInfo;->getRecordLength()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    :cond_0
    const/16 v1, 0xe

    int-to-long v4, v1

    add-long/2addr v4, v2

    instance-of v1, p1, Ljava/io/DataOutputStream;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/io/DataOutputStream;

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p1, v1

    :goto_1
    const v1, 0x46414300    # 12368.75f

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    const v1, 0x30313000

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    const-wide v1, 0xffffffffL

    and-long/2addr v1, v4

    long-to-int v2, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jmrtd/lds/iso19794/FaceImageInfo;

    invoke-virtual {v1, p1}, Lorg/jmrtd/lds/iso19794/FaceImageInfo;->writeObject(Ljava/io/OutputStream;)V

    goto :goto_2

    :cond_2
    return-void
.end method
