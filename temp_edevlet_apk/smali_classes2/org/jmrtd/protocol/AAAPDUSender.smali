.class public Lorg/jmrtd/protocol/AAAPDUSender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jmrtd/APDULevelAACapable;


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private secureMessagingSender:Lorg/jmrtd/protocol/SecureMessagingAPDUSender;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jmrtd.protocol"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jmrtd/protocol/AAAPDUSender;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lnet/sf/scuba/smartcards/CardService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jmrtd/protocol/SecureMessagingAPDUSender;

    invoke-direct {v0, p1}, Lorg/jmrtd/protocol/SecureMessagingAPDUSender;-><init>(Lnet/sf/scuba/smartcards/CardService;)V

    iput-object v0, p0, Lorg/jmrtd/protocol/AAAPDUSender;->secureMessagingSender:Lorg/jmrtd/protocol/SecureMessagingAPDUSender;

    return-void
.end method


# virtual methods
.method public declared-synchronized sendInternalAuthenticate(Lnet/sf/scuba/smartcards/APDUWrapper;I[B)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    const-string v0, "Internal Authenticate may not have succeeded, got status word "

    const-string v1, "Exception during transmission of command APDU = "

    monitor-enter p0

    if-eqz p3, :cond_b

    :try_start_0
    array-length v2, p3

    const/16 v3, 0x8

    if-ne v2, v3, :cond_b

    const/16 v2, 0x738

    const/16 v3, 0x100

    if-gt p2, v2, :cond_0

    const/16 p2, 0x100

    goto :goto_0

    :cond_0
    const/high16 p2, 0x10000

    :goto_0
    new-instance v2, Lnet/sf/scuba/smartcards/CommandAPDU;

    const/4 v5, 0x0

    const/16 v6, -0x78

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v2

    move-object v9, p3

    move v10, p2

    invoke-direct/range {v4 .. v10}, Lnet/sf/scuba/smartcards/CommandAPDU;-><init>(IIII[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    :try_start_1
    iget-object v5, p0, Lorg/jmrtd/protocol/AAAPDUSender;->secureMessagingSender:Lorg/jmrtd/protocol/SecureMessagingAPDUSender;

    invoke-virtual {v5, p1, v2}, Lorg/jmrtd/protocol/SecureMessagingAPDUSender;->transmit(Lnet/sf/scuba/smartcards/APDUWrapper;Lnet/sf/scuba/smartcards/CommandAPDU;)Lnet/sf/scuba/smartcards/ResponseAPDU;

    move-result-object v5
    :try_end_1
    .catch Lnet/sf/scuba/smartcards/CardServiceException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5}, Lnet/sf/scuba/smartcards/ResponseAPDU;->getSW()I

    move-result v1
    :try_end_2
    .catch Lnet/sf/scuba/smartcards/CardServiceException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v6

    goto :goto_1

    :catch_1
    move-exception v6

    move-object v5, v4

    :goto_1
    :try_start_3
    sget-object v7, Lorg/jmrtd/protocol/AAAPDUSender;->LOGGER:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lnet/sf/scuba/smartcards/CommandAPDU;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lnet/sf/scuba/util/Hex;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v8, v1, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v6}, Lnet/sf/scuba/smartcards/CardServiceException;->getSW()I

    move-result v1

    :goto_2
    int-to-short v1, v1

    const/16 v2, -0x7000

    if-ne v1, v2, :cond_1

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lnet/sf/scuba/smartcards/ResponseAPDU;->getData()[B

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    const v2, 0xff00

    and-int/2addr v2, v1

    const/16 v6, 0x6100

    if-ne v2, v6, :cond_9

    if-ne p2, v3, :cond_9

    if-nez v5, :cond_2

    move-object p2, v4

    goto :goto_3

    :cond_2
    :try_start_4
    invoke-virtual {v5}, Lnet/sf/scuba/smartcards/ResponseAPDU;->getData()[B

    move-result-object p2

    :goto_3
    new-instance v0, Lnet/sf/scuba/smartcards/CommandAPDU;

    const/4 v6, 0x0

    const/16 v7, -0x78

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v11, 0x10000

    move-object v5, v0

    move-object v10, p3

    invoke-direct/range {v5 .. v11}, Lnet/sf/scuba/smartcards/CommandAPDU;-><init>(IIII[BI)V

    iget-object p3, p0, Lorg/jmrtd/protocol/AAAPDUSender;->secureMessagingSender:Lorg/jmrtd/protocol/SecureMessagingAPDUSender;

    invoke-virtual {p3, p1, v0}, Lorg/jmrtd/protocol/SecureMessagingAPDUSender;->transmit(Lnet/sf/scuba/smartcards/APDUWrapper;Lnet/sf/scuba/smartcards/CommandAPDU;)Lnet/sf/scuba/smartcards/ResponseAPDU;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {p1}, Lnet/sf/scuba/smartcards/ResponseAPDU;->getData()[B

    move-result-object v4

    :goto_4
    if-nez p2, :cond_5

    if-eqz v4, :cond_4

    goto :goto_5

    :cond_4
    new-instance p1, Lnet/sf/scuba/smartcards/CardServiceException;

    const-string p2, "Internal Authenticate failed"

    invoke-direct {p1, p2, v1}, Lnet/sf/scuba/smartcards/CardServiceException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    :goto_5
    if-eqz p2, :cond_6

    if-nez v4, :cond_6

    monitor-exit p0

    return-object p2

    :cond_6
    if-nez p2, :cond_7

    if-eqz v4, :cond_7

    monitor-exit p0

    return-object v4

    :cond_7
    :try_start_5
    array-length p1, p2

    array-length p3, v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    if-le p1, p3, :cond_8

    return-object p2

    :cond_8
    return-object v4

    :cond_9
    if-eqz v5, :cond_a

    :try_start_6
    invoke-virtual {v5}, Lnet/sf/scuba/smartcards/ResponseAPDU;->getData()[B

    move-result-object p1

    if-eqz p1, :cond_a

    sget-object p1, Lorg/jmrtd/protocol/AAAPDUSender;->LOGGER:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const p3, 0xffff

    and-int/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    invoke-virtual {v5}, Lnet/sf/scuba/smartcards/ResponseAPDU;->getData()[B

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_a
    :try_start_7
    new-instance p1, Lnet/sf/scuba/smartcards/CardServiceException;

    const-string p2, "Internal Authenticate failed"

    invoke-direct {p1, p2, v1}, Lnet/sf/scuba/smartcards/CardServiceException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "rndIFD wrong length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
