.class public final Lorg/jmrtd/lds/LDSFileUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FID_TO_SFI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Short;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGGER:Ljava/util/logging/Logger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jmrtd"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jmrtd/lds/LDSFileUtil;->LOGGER:Ljava/util/logging/Logger;

    invoke-static {}, Lorg/jmrtd/lds/LDSFileUtil;->createFIDToSFIMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/jmrtd/lds/LDSFileUtil;->FID_TO_SFI:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createFIDToSFIMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Short;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/16 v1, 0x11e

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x101

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x102

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x103

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x104

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x105

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x106

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x107

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x108

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x109

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x10a

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x10b

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x10c

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x10d

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x10e

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x10f

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x110

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x11d

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const/16 v2, 0x1d

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x11c

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getDataGroupNumbers(Lorg/jmrtd/lds/SODFile;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jmrtd/lds/SODFile;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/jmrtd/lds/SODFile;->getDataGroupHashes()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public static getDataGroupNumbers(Lorg/jmrtd/lds/icao/COMFile;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jmrtd/lds/icao/COMFile;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/jmrtd/lds/icao/COMFile;->getTagList()[I

    move-result-object p0

    invoke-static {p0}, Lorg/jmrtd/lds/LDSFileUtil;->toDataGroupList([I)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public static getLDSFile(SLjava/io/InputStream;)Lorg/jmrtd/lds/AbstractLDSFile;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    packed-switch p0, :pswitch_data_1

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 8
    .line 9
    const/16 v1, 0x25

    .line 10
    .line 11
    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string p1, "DG16 files are not yet supported"

    .line 18
    .line 19
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p0

    .line 23
    :pswitch_1
    new-instance p0, Lorg/jmrtd/lds/icao/DG15File;

    .line 24
    .line 25
    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/DG15File;-><init>(Ljava/io/InputStream;)V

    .line 26
    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_2
    new-instance p0, Lorg/jmrtd/lds/icao/DG14File;

    .line 30
    .line 31
    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/DG14File;-><init>(Ljava/io/InputStream;)V

    .line 32
    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    const-string p1, "DG13 files are not yet supported"

    .line 38
    .line 39
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0

    .line 43
    :pswitch_4
    new-instance p0, Lorg/jmrtd/lds/icao/DG12File;

    .line 44
    .line 45
    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/DG12File;-><init>(Ljava/io/InputStream;)V

    .line 46
    .line 47
    .line 48
    return-object p0

    .line 49
    :pswitch_5
    new-instance p0, Lorg/jmrtd/lds/icao/DG11File;

    .line 50
    .line 51
    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/DG11File;-><init>(Ljava/io/InputStream;)V

    .line 52
    .line 53
    .line 54
    return-object p0

    .line 55
    :pswitch_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    const-string p1, "DG10 files are not yet supported"

    .line 58
    .line 59
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p0

    .line 63
    :pswitch_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    const-string p1, "DG9 files are not yet supported"

    .line 66
    .line 67
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :pswitch_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 72
    .line 73
    const-string p1, "DG8 files are not yet supported"

    .line 74
    .line 75
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p0

    .line 79
    :pswitch_9
    new-instance p0, Lorg/jmrtd/lds/icao/DG7File;

    .line 80
    .line 81
    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/DG7File;-><init>(Ljava/io/InputStream;)V

    .line 82
    .line 83
    .line 84
    return-object p0

    .line 85
    :pswitch_a
    new-instance p0, Lorg/jmrtd/lds/icao/DG6File;

    .line 86
    .line 87
    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/DG6File;-><init>(Ljava/io/InputStream;)V

    .line 88
    .line 89
    .line 90
    return-object p0

    .line 91
    :pswitch_b
    new-instance p0, Lorg/jmrtd/lds/icao/DG5File;

    .line 92
    .line 93
    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/DG5File;-><init>(Ljava/io/InputStream;)V

    .line 94
    .line 95
    .line 96
    return-object p0

    .line 97
    :pswitch_c
    new-instance p0, Lorg/jmrtd/lds/icao/DG4File;

    .line 98
    .line 99
    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/DG4File;-><init>(Ljava/io/InputStream;)V

    .line 100
    .line 101
    .line 102
    return-object p0

    .line 103
    :pswitch_d
    new-instance p0, Lorg/jmrtd/lds/icao/DG3File;

    .line 104
    .line 105
    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/DG3File;-><init>(Ljava/io/InputStream;)V

    .line 106
    .line 107
    .line 108
    return-object p0

    .line 109
    :pswitch_e
    new-instance p0, Lorg/jmrtd/lds/icao/DG2File;

    .line 110
    .line 111
    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/DG2File;-><init>(Ljava/io/InputStream;)V

    .line 112
    .line 113
    .line 114
    return-object p0

    .line 115
    :pswitch_f
    new-instance p0, Lorg/jmrtd/lds/icao/DG1File;

    .line 116
    .line 117
    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/DG1File;-><init>(Ljava/io/InputStream;)V

    .line 118
    .line 119
    .line 120
    return-object p0

    .line 121
    :pswitch_10
    new-instance p0, Lorg/jmrtd/lds/icao/COMFile;

    .line 122
    .line 123
    invoke-direct {p0, p1}, Lorg/jmrtd/lds/icao/COMFile;-><init>(Ljava/io/InputStream;)V

    .line 124
    .line 125
    .line 126
    return-object p0

    .line 127
    :pswitch_11
    new-instance p0, Lorg/jmrtd/lds/SODFile;

    .line 128
    .line 129
    invoke-direct {p0, p1}, Lorg/jmrtd/lds/SODFile;-><init>(Ljava/io/InputStream;)V

    .line 130
    .line 131
    .line 132
    return-object p0

    .line 133
    :pswitch_12
    new-instance p0, Lorg/jmrtd/lds/CVCAFile;

    .line 134
    .line 135
    invoke-direct {p0, p1}, Lorg/jmrtd/lds/CVCAFile;-><init>(Ljava/io/InputStream;)V

    .line 136
    .line 137
    .line 138
    return-object p0

    .line 139
    :goto_0
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 140
    .line 141
    .line 142
    new-instance p1, Lorg/jmrtd/lds/CVCAFile;

    .line 143
    .line 144
    invoke-direct {p1, p0, v0}, Lorg/jmrtd/lds/CVCAFile;-><init>(SLjava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .line 146
    .line 147
    return-object p1

    .line 148
    :catch_0
    move-exception p1

    .line 149
    sget-object v1, Lorg/jmrtd/lds/LDSFileUtil;->LOGGER:Ljava/util/logging/Logger;

    .line 150
    .line 151
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 152
    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    const-string v4, "Unknown file "

    .line 156
    .line 157
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-virtual {v1, v2, v3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    .line 175
    .line 176
    .line 177
    new-instance p1, Ljava/lang/NumberFormatException;

    .line 178
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-static {p0, v0}, Lab/b;->c(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw p1

    .line 192
    nop

    .line 193
    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    :pswitch_data_1
    .packed-switch 0x11c
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public static lookupDataGroupNumberByFID(S)I
    .locals 3

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, "Unknown fid "

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v1}, Lab/b;->c(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0

    .line 21
    :pswitch_0
    const/16 p0, 0x10

    .line 22
    .line 23
    return p0

    .line 24
    :pswitch_1
    const/16 p0, 0xf

    .line 25
    .line 26
    return p0

    .line 27
    :pswitch_2
    const/16 p0, 0xe

    .line 28
    .line 29
    return p0

    .line 30
    :pswitch_3
    const/16 p0, 0xd

    .line 31
    .line 32
    return p0

    .line 33
    :pswitch_4
    const/16 p0, 0xc

    .line 34
    .line 35
    return p0

    .line 36
    :pswitch_5
    const/16 p0, 0xb

    .line 37
    .line 38
    return p0

    .line 39
    :pswitch_6
    const/16 p0, 0xa

    .line 40
    .line 41
    return p0

    .line 42
    :pswitch_7
    const/16 p0, 0x9

    .line 43
    .line 44
    return p0

    .line 45
    :pswitch_8
    const/16 p0, 0x8

    .line 46
    .line 47
    return p0

    .line 48
    :pswitch_9
    const/4 p0, 0x7

    .line 49
    return p0

    .line 50
    :pswitch_a
    const/4 p0, 0x6

    .line 51
    return p0

    .line 52
    :pswitch_b
    const/4 p0, 0x5

    .line 53
    return p0

    .line 54
    :pswitch_c
    const/4 p0, 0x4

    .line 55
    return p0

    .line 56
    :pswitch_d
    const/4 p0, 0x3

    .line 57
    return p0

    .line 58
    :pswitch_e
    const/4 p0, 0x2

    .line 59
    return p0

    .line 60
    :pswitch_f
    const/4 p0, 0x1

    .line 61
    return p0

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static lookupDataGroupNumberByTag(I)I
    .locals 3

    .line 1
    const/16 v0, 0x61

    .line 2
    .line 3
    if-eq p0, v0, :cond_3

    .line 4
    .line 5
    const/16 v0, 0x63

    .line 6
    .line 7
    if-eq p0, v0, :cond_2

    .line 8
    .line 9
    const/16 v0, 0x75

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0x76

    .line 14
    .line 15
    if-eq p0, v0, :cond_0

    .line 16
    .line 17
    packed-switch p0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "Unknown tag "

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p0, v1}, Lab/b;->c(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :pswitch_0
    const/16 p0, 0x10

    .line 38
    .line 39
    return p0

    .line 40
    :pswitch_1
    const/16 p0, 0xf

    .line 41
    .line 42
    return p0

    .line 43
    :pswitch_2
    const/16 p0, 0xe

    .line 44
    .line 45
    return p0

    .line 46
    :pswitch_3
    const/16 p0, 0xd

    .line 47
    .line 48
    return p0

    .line 49
    :pswitch_4
    const/16 p0, 0xc

    .line 50
    .line 51
    return p0

    .line 52
    :pswitch_5
    const/16 p0, 0xb

    .line 53
    .line 54
    return p0

    .line 55
    :pswitch_6
    const/16 p0, 0xa

    .line 56
    .line 57
    return p0

    .line 58
    :pswitch_7
    const/16 p0, 0x9

    .line 59
    .line 60
    return p0

    .line 61
    :pswitch_8
    const/16 p0, 0x8

    .line 62
    .line 63
    return p0

    .line 64
    :pswitch_9
    const/4 p0, 0x7

    .line 65
    return p0

    .line 66
    :pswitch_a
    const/4 p0, 0x6

    .line 67
    return p0

    .line 68
    :pswitch_b
    const/4 p0, 0x5

    .line 69
    return p0

    .line 70
    :cond_0
    const/4 p0, 0x4

    .line 71
    return p0

    .line 72
    :cond_1
    const/4 p0, 0x2

    .line 73
    return p0

    .line 74
    :cond_2
    const/4 p0, 0x3

    .line 75
    return p0

    .line 76
    :cond_3
    const/4 p0, 0x1

    .line 77
    return p0

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static lookupFIDByDataGroupNumber(I)S
    .locals 2

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 5
    .line 6
    const-string v1, "Unknown number "

    .line 7
    .line 8
    invoke-static {v1, p0}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0

    .line 16
    :pswitch_0
    const/16 p0, 0x110

    .line 17
    .line 18
    return p0

    .line 19
    :pswitch_1
    const/16 p0, 0x10f

    .line 20
    .line 21
    return p0

    .line 22
    :pswitch_2
    const/16 p0, 0x10e

    .line 23
    .line 24
    return p0

    .line 25
    :pswitch_3
    const/16 p0, 0x10d

    .line 26
    .line 27
    return p0

    .line 28
    :pswitch_4
    const/16 p0, 0x10c

    .line 29
    .line 30
    return p0

    .line 31
    :pswitch_5
    const/16 p0, 0x10b

    .line 32
    .line 33
    return p0

    .line 34
    :pswitch_6
    const/16 p0, 0x10a

    .line 35
    .line 36
    return p0

    .line 37
    :pswitch_7
    const/16 p0, 0x109

    .line 38
    .line 39
    return p0

    .line 40
    :pswitch_8
    const/16 p0, 0x108

    .line 41
    .line 42
    return p0

    .line 43
    :pswitch_9
    const/16 p0, 0x107

    .line 44
    .line 45
    return p0

    .line 46
    :pswitch_a
    const/16 p0, 0x106

    .line 47
    .line 48
    return p0

    .line 49
    :pswitch_b
    const/16 p0, 0x105

    .line 50
    .line 51
    return p0

    .line 52
    :pswitch_c
    const/16 p0, 0x104

    .line 53
    .line 54
    return p0

    .line 55
    :pswitch_d
    const/16 p0, 0x103

    .line 56
    .line 57
    return p0

    .line 58
    :pswitch_e
    const/16 p0, 0x102

    .line 59
    .line 60
    return p0

    .line 61
    :pswitch_f
    const/16 p0, 0x101

    .line 62
    .line 63
    return p0

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static lookupFIDBySFI(B)S
    .locals 3

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    packed-switch p0, :pswitch_data_1

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "Unknown SFI "

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v1}, Lab/b;->c(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0

    .line 24
    :pswitch_0
    const/16 p0, 0x110

    .line 25
    .line 26
    return p0

    .line 27
    :pswitch_1
    const/16 p0, 0x10f

    .line 28
    .line 29
    return p0

    .line 30
    :pswitch_2
    const/16 p0, 0x10e

    .line 31
    .line 32
    return p0

    .line 33
    :pswitch_3
    const/16 p0, 0x10d

    .line 34
    .line 35
    return p0

    .line 36
    :pswitch_4
    const/16 p0, 0x10c

    .line 37
    .line 38
    return p0

    .line 39
    :pswitch_5
    const/16 p0, 0x10b

    .line 40
    .line 41
    return p0

    .line 42
    :pswitch_6
    const/16 p0, 0x10a

    .line 43
    .line 44
    return p0

    .line 45
    :pswitch_7
    const/16 p0, 0x109

    .line 46
    .line 47
    return p0

    .line 48
    :pswitch_8
    const/16 p0, 0x108

    .line 49
    .line 50
    return p0

    .line 51
    :pswitch_9
    const/16 p0, 0x107

    .line 52
    .line 53
    return p0

    .line 54
    :pswitch_a
    const/16 p0, 0x106

    .line 55
    .line 56
    return p0

    .line 57
    :pswitch_b
    const/16 p0, 0x105

    .line 58
    .line 59
    return p0

    .line 60
    :pswitch_c
    const/16 p0, 0x104

    .line 61
    .line 62
    return p0

    .line 63
    :pswitch_d
    const/16 p0, 0x103

    .line 64
    .line 65
    return p0

    .line 66
    :pswitch_e
    const/16 p0, 0x102

    .line 67
    .line 68
    return p0

    .line 69
    :pswitch_f
    const/16 p0, 0x101

    .line 70
    .line 71
    return p0

    .line 72
    :pswitch_10
    const/16 p0, 0x11e

    .line 73
    .line 74
    return p0

    .line 75
    :pswitch_11
    const/16 p0, 0x11d

    .line 76
    .line 77
    return p0

    .line 78
    :pswitch_12
    const/16 p0, 0x11c

    .line 79
    .line 80
    return p0

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    :pswitch_data_1
    .packed-switch 0x1c
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public static lookupFIDByTag(I)S
    .locals 3

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, "Unknown tag "

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v1}, Lab/b;->c(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0

    .line 21
    :pswitch_1
    const/16 p0, 0x11d

    .line 22
    .line 23
    return p0

    .line 24
    :pswitch_2
    const/16 p0, 0x104

    .line 25
    .line 26
    return p0

    .line 27
    :pswitch_3
    const/16 p0, 0x102

    .line 28
    .line 29
    return p0

    .line 30
    :pswitch_4
    const/16 p0, 0x110

    .line 31
    .line 32
    return p0

    .line 33
    :pswitch_5
    const/16 p0, 0x10f

    .line 34
    .line 35
    return p0

    .line 36
    :pswitch_6
    const/16 p0, 0x10e

    .line 37
    .line 38
    return p0

    .line 39
    :pswitch_7
    const/16 p0, 0x10d

    .line 40
    .line 41
    return p0

    .line 42
    :pswitch_8
    const/16 p0, 0x10c

    .line 43
    .line 44
    return p0

    .line 45
    :pswitch_9
    const/16 p0, 0x10b

    .line 46
    .line 47
    return p0

    .line 48
    :pswitch_a
    const/16 p0, 0x10a

    .line 49
    .line 50
    return p0

    .line 51
    :pswitch_b
    const/16 p0, 0x109

    .line 52
    .line 53
    return p0

    .line 54
    :pswitch_c
    const/16 p0, 0x108

    .line 55
    .line 56
    return p0

    .line 57
    :pswitch_d
    const/16 p0, 0x107

    .line 58
    .line 59
    return p0

    .line 60
    :pswitch_e
    const/16 p0, 0x106

    .line 61
    .line 62
    return p0

    .line 63
    :pswitch_f
    const/16 p0, 0x105

    .line 64
    .line 65
    return p0

    .line 66
    :pswitch_10
    const/16 p0, 0x103

    .line 67
    .line 68
    return p0

    .line 69
    :pswitch_11
    const/16 p0, 0x101

    .line 70
    .line 71
    return p0

    .line 72
    :pswitch_12
    const/16 p0, 0x11e

    .line 73
    .line 74
    return p0

    .line 75
    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static lookupFileNameByFID(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x11d

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x11e

    .line 6
    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    packed-switch p0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, "File with FID 0x"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v0}, Lab/b;->c(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :pswitch_0
    const-string p0, "EF_DG16"

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_1
    const-string p0, "EF_DG15"

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_2
    const-string p0, "EF_DG14"

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_3
    const-string p0, "EF_DG13"

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_4
    const-string p0, "EF_DG12"

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_5
    const-string p0, "EF_DG11"

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_6
    const-string p0, "EF_DG10"

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_7
    const-string p0, "EF_DG9"

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_8
    const-string p0, "EF_DG8"

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_9
    const-string p0, "EF_DG7"

    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_a
    const-string p0, "EF_DG6"

    .line 55
    .line 56
    return-object p0

    .line 57
    :pswitch_b
    const-string p0, "EF_DG5"

    .line 58
    .line 59
    return-object p0

    .line 60
    :pswitch_c
    const-string p0, "EF_DG4"

    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_d
    const-string p0, "EF_DG3"

    .line 64
    .line 65
    return-object p0

    .line 66
    :pswitch_e
    const-string p0, "EF_DG2"

    .line 67
    .line 68
    return-object p0

    .line 69
    :pswitch_f
    const-string p0, "EF_DG1"

    .line 70
    .line 71
    return-object p0

    .line 72
    :cond_0
    const-string p0, "EF_COM"

    .line 73
    .line 74
    return-object p0

    .line 75
    :cond_1
    const-string p0, "EF_SOD"

    .line 76
    .line 77
    return-object p0

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static lookupFileNameByTag(I)Ljava/lang/String;
    .locals 2

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "File with tag 0x"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0}, Lab/b;->c(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :pswitch_1
    const-string p0, "EF_SOD"

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_2
    const-string p0, "EF_DG4"

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_3
    const-string p0, "EF_DG2"

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_4
    const-string p0, "EF_DG16"

    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_5
    const-string p0, "EF_DG15"

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_6
    const-string p0, "EF_DG14"

    .line 32
    .line 33
    return-object p0

    .line 34
    :pswitch_7
    const-string p0, "EF_DG13"

    .line 35
    .line 36
    return-object p0

    .line 37
    :pswitch_8
    const-string p0, "EF_DG12"

    .line 38
    .line 39
    return-object p0

    .line 40
    :pswitch_9
    const-string p0, "EF_DG11"

    .line 41
    .line 42
    return-object p0

    .line 43
    :pswitch_a
    const-string p0, "EF_DG10"

    .line 44
    .line 45
    return-object p0

    .line 46
    :pswitch_b
    const-string p0, "EF_DG9"

    .line 47
    .line 48
    return-object p0

    .line 49
    :pswitch_c
    const-string p0, "EF_DG8"

    .line 50
    .line 51
    return-object p0

    .line 52
    :pswitch_d
    const-string p0, "EF_DG7"

    .line 53
    .line 54
    return-object p0

    .line 55
    :pswitch_e
    const-string p0, "EF_DG6"

    .line 56
    .line 57
    return-object p0

    .line 58
    :pswitch_f
    const-string p0, "EF_DG5"

    .line 59
    .line 60
    return-object p0

    .line 61
    :pswitch_10
    const-string p0, "EF_DG3"

    .line 62
    .line 63
    return-object p0

    .line 64
    :pswitch_11
    const-string p0, "EF_DG1"

    .line 65
    .line 66
    return-object p0

    .line 67
    :pswitch_12
    const-string p0, "EF_COM"

    .line 68
    .line 69
    return-object p0

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static lookupSFIByFID(S)I
    .locals 3

    .line 1
    sget-object v0, Lorg/jmrtd/lds/LDSFileUtil;->FID_TO_SFI:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Byte;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    and-int/lit16 p0, p0, 0xff

    .line 20
    .line 21
    return p0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v2, "Unknown FID "

    .line 27
    .line 28
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p0, v1}, Lab/b;->c(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0
.end method

.method public static lookupTagByDataGroupNumber(I)I
    .locals 2

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 5
    .line 6
    const-string v1, "Unknown number "

    .line 7
    .line 8
    invoke-static {v1, p0}, Landroid/support/v4/media/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0

    .line 16
    :pswitch_0
    const/16 p0, 0x70

    .line 17
    .line 18
    return p0

    .line 19
    :pswitch_1
    const/16 p0, 0x6f

    .line 20
    .line 21
    return p0

    .line 22
    :pswitch_2
    const/16 p0, 0x6e

    .line 23
    .line 24
    return p0

    .line 25
    :pswitch_3
    const/16 p0, 0x6d

    .line 26
    .line 27
    return p0

    .line 28
    :pswitch_4
    const/16 p0, 0x6c

    .line 29
    .line 30
    return p0

    .line 31
    :pswitch_5
    const/16 p0, 0x6b

    .line 32
    .line 33
    return p0

    .line 34
    :pswitch_6
    const/16 p0, 0x6a

    .line 35
    .line 36
    return p0

    .line 37
    :pswitch_7
    const/16 p0, 0x69

    .line 38
    .line 39
    return p0

    .line 40
    :pswitch_8
    const/16 p0, 0x68

    .line 41
    .line 42
    return p0

    .line 43
    :pswitch_9
    const/16 p0, 0x67

    .line 44
    .line 45
    return p0

    .line 46
    :pswitch_a
    const/16 p0, 0x66

    .line 47
    .line 48
    return p0

    .line 49
    :pswitch_b
    const/16 p0, 0x65

    .line 50
    .line 51
    return p0

    .line 52
    :pswitch_c
    const/16 p0, 0x76

    .line 53
    .line 54
    return p0

    .line 55
    :pswitch_d
    const/16 p0, 0x63

    .line 56
    .line 57
    return p0

    .line 58
    :pswitch_e
    const/16 p0, 0x75

    .line 59
    .line 60
    return p0

    .line 61
    :pswitch_f
    const/16 p0, 0x61

    .line 62
    .line 63
    return p0

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static lookupTagByFID(S)S
    .locals 3

    .line 1
    const/16 v0, 0x11d

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x11e

    .line 6
    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    packed-switch p0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "Unknown fid "

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p0, v1}, Lab/b;->c(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0

    .line 29
    :pswitch_0
    const/16 p0, 0x70

    .line 30
    .line 31
    return p0

    .line 32
    :pswitch_1
    const/16 p0, 0x6f

    .line 33
    .line 34
    return p0

    .line 35
    :pswitch_2
    const/16 p0, 0x6e

    .line 36
    .line 37
    return p0

    .line 38
    :pswitch_3
    const/16 p0, 0x6d

    .line 39
    .line 40
    return p0

    .line 41
    :pswitch_4
    const/16 p0, 0x6c

    .line 42
    .line 43
    return p0

    .line 44
    :pswitch_5
    const/16 p0, 0x6b

    .line 45
    .line 46
    return p0

    .line 47
    :pswitch_6
    const/16 p0, 0x6a

    .line 48
    .line 49
    return p0

    .line 50
    :pswitch_7
    const/16 p0, 0x69

    .line 51
    .line 52
    return p0

    .line 53
    :pswitch_8
    const/16 p0, 0x68

    .line 54
    .line 55
    return p0

    .line 56
    :pswitch_9
    const/16 p0, 0x67

    .line 57
    .line 58
    return p0

    .line 59
    :pswitch_a
    const/16 p0, 0x66

    .line 60
    .line 61
    return p0

    .line 62
    :pswitch_b
    const/16 p0, 0x65

    .line 63
    .line 64
    return p0

    .line 65
    :pswitch_c
    const/16 p0, 0x76

    .line 66
    .line 67
    return p0

    .line 68
    :pswitch_d
    const/16 p0, 0x63

    .line 69
    .line 70
    return p0

    .line 71
    :pswitch_e
    const/16 p0, 0x75

    .line 72
    .line 73
    return p0

    .line 74
    :pswitch_f
    const/16 p0, 0x61

    .line 75
    .line 76
    return p0

    .line 77
    :cond_0
    const/16 p0, 0x60

    .line 78
    .line 79
    return p0

    .line 80
    :cond_1
    const/16 p0, 0x77

    .line 81
    .line 82
    return p0

    .line 83
    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static toDataGroupList([I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p0, v2

    :try_start_0
    invoke-static {v3}, Lorg/jmrtd/lds/LDSFileUtil;->lookupDataGroupNumberByTag(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    sget-object v5, Lorg/jmrtd/lds/LDSFileUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Could not find DG number for tag: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v6, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
