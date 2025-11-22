.class public Lorg/jmrtd/protocol/ReadBinaryAPDUSender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jmrtd/APDULevelReadBinaryCapable;


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private secureMessagingSender:Lorg/jmrtd/protocol/SecureMessagingAPDUSender;

.field private service:Lnet/sf/scuba/smartcards/CardService;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jmrtd.protocol"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jmrtd/protocol/ReadBinaryAPDUSender;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lnet/sf/scuba/smartcards/CardService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jmrtd/protocol/ReadBinaryAPDUSender;->service:Lnet/sf/scuba/smartcards/CardService;

    new-instance v0, Lorg/jmrtd/protocol/SecureMessagingAPDUSender;

    invoke-direct {v0, p1}, Lorg/jmrtd/protocol/SecureMessagingAPDUSender;-><init>(Lnet/sf/scuba/smartcards/CardService;)V

    iput-object v0, p0, Lorg/jmrtd/protocol/ReadBinaryAPDUSender;->secureMessagingSender:Lorg/jmrtd/protocol/SecureMessagingAPDUSender;

    return-void
.end method

.method private static checkStatusWordAfterFileOperation(Lnet/sf/scuba/smartcards/CommandAPDU;Lnet/sf/scuba/smartcards/ResponseAPDU;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_7

    .line 2
    .line 3
    invoke-virtual {p1}, Lnet/sf/scuba/smartcards/ResponseAPDU;->getData()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lnet/sf/scuba/smartcards/ResponseAPDU;->getSW()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    int-to-short v1, v1

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "CAPDU = "

    .line 15
    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lnet/sf/scuba/smartcards/CommandAPDU;->getBytes()[B

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Lnet/sf/scuba/util/Hex;->bytesToHexString([B)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p0, ", RAPDU = "

    .line 31
    .line 32
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lnet/sf/scuba/smartcards/ResponseAPDU;->getBytes()[B

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0}, Lnet/sf/scuba/util/Hex;->bytesToHexString([B)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    and-int/lit16 p1, v1, 0x6700

    .line 51
    .line 52
    const/16 v2, 0x6700

    .line 53
    .line 54
    if-ne p1, v2, :cond_1

    .line 55
    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    array-length p1, v0

    .line 59
    if-eqz p1, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    new-instance p1, Lnet/sf/scuba/smartcards/CardServiceException;

    .line 63
    .line 64
    const-string v0, "Wrong length, "

    .line 65
    .line 66
    invoke-static {v0, p0}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-direct {p1, p0, v1}, Lnet/sf/scuba/smartcards/CardServiceException;-><init>(Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    throw p1

    .line 74
    :cond_1
    :goto_0
    const/16 p1, -0x7000

    .line 75
    .line 76
    if-eq v1, p1, :cond_6

    .line 77
    .line 78
    const/16 p1, 0x6282

    .line 79
    .line 80
    if-eq v1, p1, :cond_4

    .line 81
    .line 82
    const/16 p1, 0x6982

    .line 83
    .line 84
    if-eq v1, p1, :cond_3

    .line 85
    .line 86
    const/16 p1, 0x6a82

    .line 87
    .line 88
    if-eq v1, p1, :cond_2

    .line 89
    .line 90
    const/16 p1, 0x6985

    .line 91
    .line 92
    if-eq v1, p1, :cond_3

    .line 93
    .line 94
    const/16 p1, 0x6986

    .line 95
    .line 96
    if-eq v1, p1, :cond_3

    .line 97
    .line 98
    new-instance p1, Lnet/sf/scuba/smartcards/CardServiceException;

    .line 99
    .line 100
    const-string v0, "Error occured, "

    .line 101
    .line 102
    invoke-static {v0, p0}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-direct {p1, p0, v1}, Lnet/sf/scuba/smartcards/CardServiceException;-><init>(Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    throw p1

    .line 110
    :cond_2
    new-instance p1, Lnet/sf/scuba/smartcards/CardServiceException;

    .line 111
    .line 112
    const-string v0, "File not found, "

    .line 113
    .line 114
    invoke-static {v0, p0}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-direct {p1, p0, v1}, Lnet/sf/scuba/smartcards/CardServiceException;-><init>(Ljava/lang/String;I)V

    .line 119
    .line 120
    .line 121
    throw p1

    .line 122
    :cond_3
    new-instance p1, Lnet/sf/scuba/smartcards/CardServiceException;

    .line 123
    .line 124
    const-string v0, "Access to file denied, "

    .line 125
    .line 126
    invoke-static {v0, p0}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-direct {p1, p0, v1}, Lnet/sf/scuba/smartcards/CardServiceException;-><init>(Ljava/lang/String;I)V

    .line 131
    .line 132
    .line 133
    throw p1

    .line 134
    :cond_4
    if-eqz v0, :cond_5

    .line 135
    .line 136
    array-length p1, v0

    .line 137
    if-eqz p1, :cond_5

    .line 138
    .line 139
    return-void

    .line 140
    :cond_5
    new-instance p1, Lnet/sf/scuba/smartcards/CardServiceException;

    .line 141
    .line 142
    const-string v0, "End of file, "

    .line 143
    .line 144
    invoke-static {v0, p0}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-direct {p1, p0, v1}, Lnet/sf/scuba/smartcards/CardServiceException;-><init>(Ljava/lang/String;I)V

    .line 149
    .line 150
    .line 151
    throw p1

    .line 152
    :cond_6
    return-void

    .line 153
    :cond_7
    new-instance p0, Lnet/sf/scuba/smartcards/CardServiceException;

    .line 154
    .line 155
    const-string p1, "No response APDU"

    .line 156
    .line 157
    invoke-direct {p0, p1}, Lnet/sf/scuba/smartcards/CardServiceException;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw p0
.end method

.method private static getResponseData(Lnet/sf/scuba/smartcards/ResponseAPDU;Z)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/scuba/smartcards/ResponseAPDU;->getData()[B

    move-result-object p0

    const-string v0, "Malformed read binary long response data"

    if-eqz p0, :cond_4

    if-nez p1, :cond_1

    return-object p0

    :cond_1
    const/4 p1, 0x0

    aget-byte v1, p0, p1

    const/16 v2, 0x53

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    aget-byte v1, p0, v0

    and-int/lit16 v2, v1, 0x80

    int-to-byte v2, v2

    const/16 v3, -0x80

    if-ne v2, v3, :cond_2

    and-int/lit8 v1, v1, 0xf

    add-int/2addr v1, v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    add-int/2addr v1, v0

    array-length v0, p0

    sub-int/2addr v0, v1

    new-array v2, v0, [B

    invoke-static {p0, v1, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_3
    new-instance p0, Lnet/sf/scuba/smartcards/CardServiceException;

    invoke-direct {p0, v0}, Lnet/sf/scuba/smartcards/CardServiceException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lnet/sf/scuba/smartcards/CardServiceException;

    invoke-direct {p0, v0}, Lnet/sf/scuba/smartcards/CardServiceException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public declared-synchronized sendReadBinary(Lnet/sf/scuba/smartcards/APDUWrapper;IIIZZ)[B
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p3

    move/from16 v8, p4

    move/from16 v9, p6

    const-string v10, "Empty response data: response APDU bytes = "

    monitor-enter p0

    const/4 v11, 0x0

    if-nez v8, :cond_0

    monitor-exit p0

    return-object v11

    :cond_0
    const v2, 0xff00

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v5, v2

    and-int/lit16 v0, v0, 0xff

    int-to-byte v6, v0

    if-eqz v9, :cond_4

    const/16 v0, 0x80

    const/16 v2, 0x100

    if-ge v8, v0, :cond_1

    add-int/lit8 v0, v8, 0x2

    goto :goto_0

    :cond_1
    if-ge v8, v2, :cond_2

    add-int/lit8 v0, v8, 0x3

    goto :goto_0

    :cond_2
    move v0, v8

    :goto_0
    if-le v0, v2, :cond_3

    const/16 v0, 0x100

    :cond_3
    const/4 v2, 0x4

    :try_start_0
    new-array v2, v2, [B

    const/4 v3, 0x0

    const/16 v4, 0x54

    aput-byte v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x2

    aput-byte v4, v2, v3

    aput-byte v5, v2, v4

    const/4 v3, 0x3

    aput-byte v6, v2, v3

    new-instance v3, Lnet/sf/scuba/smartcards/CommandAPDU;

    const/4 v13, 0x0

    const/16 v14, -0x4f

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v12, v3

    move-object/from16 v17, v2

    move/from16 v18, v0

    invoke-direct/range {v12 .. v18}, Lnet/sf/scuba/smartcards/CommandAPDU;-><init>(IIII[BI)V

    move v8, v0

    goto :goto_2

    :cond_4
    if-eqz p5, :cond_5

    new-instance v0, Lnet/sf/scuba/smartcards/CommandAPDU;

    const/4 v3, 0x0

    const/16 v4, -0x50

    move/from16 v2, p2

    int-to-byte v5, v2

    move-object v2, v0

    move/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lnet/sf/scuba/smartcards/CommandAPDU;-><init>(IIIII)V

    goto :goto_1

    :cond_5
    new-instance v0, Lnet/sf/scuba/smartcards/CommandAPDU;

    const/4 v3, 0x0

    const/16 v4, -0x50

    move-object v2, v0

    move/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lnet/sf/scuba/smartcards/CommandAPDU;-><init>(IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    move-object v3, v0

    :goto_2
    :try_start_1
    iget-object v0, v1, Lorg/jmrtd/protocol/ReadBinaryAPDUSender;->secureMessagingSender:Lorg/jmrtd/protocol/SecureMessagingAPDUSender;

    move-object/from16 v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/jmrtd/protocol/SecureMessagingAPDUSender;->transmit(Lnet/sf/scuba/smartcards/APDUWrapper;Lnet/sf/scuba/smartcards/CommandAPDU;)Lnet/sf/scuba/smartcards/ResponseAPDU;

    move-result-object v11

    invoke-virtual {v11}, Lnet/sf/scuba/smartcards/ResponseAPDU;->getSW()I

    move-result v0
    :try_end_1
    .catch Lnet/sf/scuba/smartcards/CardServiceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v2, v1, Lorg/jmrtd/protocol/ReadBinaryAPDUSender;->service:Lnet/sf/scuba/smartcards/CardService;

    invoke-virtual {v2, v0}, Lnet/sf/scuba/smartcards/CardService;->isConnectionLost(Ljava/lang/Exception;)Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Lorg/jmrtd/protocol/ReadBinaryAPDUSender;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "Exception during READ BINARY"

    invoke-virtual {v2, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lnet/sf/scuba/smartcards/CardServiceException;->getSW()I

    move-result v0

    :goto_3
    int-to-short v0, v0

    invoke-static {v11, v9}, Lorg/jmrtd/protocol/ReadBinaryAPDUSender;->getResponseData(Lnet/sf/scuba/smartcards/ResponseAPDU;Z)[B

    move-result-object v2

    if-eqz v2, :cond_6

    array-length v4, v2

    if-nez v4, :cond_7

    :cond_6
    sget-object v4, Lorg/jmrtd/protocol/ReadBinaryAPDUSender;->LOGGER:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", le = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", sw = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_7
    invoke-static {v3, v11}, Lorg/jmrtd/protocol/ReadBinaryAPDUSender;->checkStatusWordAfterFileOperation(Lnet/sf/scuba/smartcards/CommandAPDU;Lnet/sf/scuba/smartcards/ResponseAPDU;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_8
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendSelectApplet(Lnet/sf/scuba/smartcards/APDUWrapper;[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v6, Lnet/sf/scuba/smartcards/CommandAPDU;

    const/4 v1, 0x0

    const/16 v2, -0x5c

    const/4 v3, 0x4

    const/16 v4, 0xc

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lnet/sf/scuba/smartcards/CommandAPDU;-><init>(IIII[B)V

    iget-object p2, p0, Lorg/jmrtd/protocol/ReadBinaryAPDUSender;->secureMessagingSender:Lorg/jmrtd/protocol/SecureMessagingAPDUSender;

    invoke-virtual {p2, p1, v6}, Lorg/jmrtd/protocol/SecureMessagingAPDUSender;->transmit(Lnet/sf/scuba/smartcards/APDUWrapper;Lnet/sf/scuba/smartcards/CommandAPDU;)Lnet/sf/scuba/smartcards/ResponseAPDU;

    move-result-object p1

    invoke-static {v6, p1}, Lorg/jmrtd/protocol/ReadBinaryAPDUSender;->checkStatusWordAfterFileOperation(Lnet/sf/scuba/smartcards/CommandAPDU;Lnet/sf/scuba/smartcards/ResponseAPDU;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "AID cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized sendSelectFile(Lnet/sf/scuba/smartcards/APDUWrapper;S)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    new-array v6, v0, [B

    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, v6, v1

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v0, 0x1

    aput-byte p2, v6, v0

    new-instance p2, Lnet/sf/scuba/smartcards/CommandAPDU;

    const/4 v2, 0x0

    const/16 v3, -0x5c

    const/4 v4, 0x2

    const/16 v5, 0xc

    const/4 v7, 0x0

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Lnet/sf/scuba/smartcards/CommandAPDU;-><init>(IIII[BI)V

    iget-object v0, p0, Lorg/jmrtd/protocol/ReadBinaryAPDUSender;->secureMessagingSender:Lorg/jmrtd/protocol/SecureMessagingAPDUSender;

    invoke-virtual {v0, p1, p2}, Lorg/jmrtd/protocol/SecureMessagingAPDUSender;->transmit(Lnet/sf/scuba/smartcards/APDUWrapper;Lnet/sf/scuba/smartcards/CommandAPDU;)Lnet/sf/scuba/smartcards/ResponseAPDU;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {p2, p1}, Lorg/jmrtd/protocol/ReadBinaryAPDUSender;->checkStatusWordAfterFileOperation(Lnet/sf/scuba/smartcards/CommandAPDU;Lnet/sf/scuba/smartcards/ResponseAPDU;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized sendSelectMF()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v6, Lnet/sf/scuba/smartcards/CommandAPDU;

    const/4 v1, 0x0

    const/16 v2, -0x5c

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v0, 0x2

    new-array v5, v0, [B

    const/16 v0, 0x3f

    const/4 v7, 0x0

    aput-byte v0, v5, v7

    const/4 v0, 0x1

    aput-byte v7, v5, v0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/sf/scuba/smartcards/CommandAPDU;-><init>(IIII[B)V

    iget-object v0, p0, Lorg/jmrtd/protocol/ReadBinaryAPDUSender;->secureMessagingSender:Lorg/jmrtd/protocol/SecureMessagingAPDUSender;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v6}, Lorg/jmrtd/protocol/SecureMessagingAPDUSender;->transmit(Lnet/sf/scuba/smartcards/APDUWrapper;Lnet/sf/scuba/smartcards/CommandAPDU;)Lnet/sf/scuba/smartcards/ResponseAPDU;

    move-result-object v0

    invoke-static {v6, v0}, Lorg/jmrtd/protocol/ReadBinaryAPDUSender;->checkStatusWordAfterFileOperation(Lnet/sf/scuba/smartcards/CommandAPDU;Lnet/sf/scuba/smartcards/ResponseAPDU;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
