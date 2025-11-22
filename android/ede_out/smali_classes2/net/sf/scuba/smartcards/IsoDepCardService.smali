.class public Lnet/sf/scuba/smartcards/IsoDepCardService;
.super Lnet/sf/scuba/smartcards/CardService;
.source "SourceFile"


# instance fields
.field private apduCount:I

.field private isoDep:Landroid/nfc/tech/IsoDep;


# direct methods
.method public constructor <init>(Landroid/nfc/tech/IsoDep;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/scuba/smartcards/CardService;-><init>()V

    iput-object p1, p0, Lnet/sf/scuba/smartcards/IsoDepCardService;->isoDep:Landroid/nfc/tech/IsoDep;

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/scuba/smartcards/IsoDepCardService;->apduCount:I

    return-void
.end method

.method private isDirectConnectionLost(Ljava/lang/Throwable;)Z
    .locals 5

    invoke-direct {p0}, Lnet/sf/scuba/smartcards/IsoDepCardService;->isISODepConnected()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TagLostException"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, ""

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "tag was lost"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v1

    :cond_4
    instance-of p1, p1, Lnet/sf/scuba/smartcards/CardServiceException;

    if-eqz p1, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v3, "not connected"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v1

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v2, "failed response"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method private isISODepConnected()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/sf/scuba/smartcards/IsoDepCardService;->isoDep:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->isConnected()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public close()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/sf/scuba/smartcards/IsoDepCardService;->isoDep:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->close()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/scuba/smartcards/CardService;->state:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getATR()[B
    .locals 2

    iget-object v0, p0, Lnet/sf/scuba/smartcards/IsoDepCardService;->isoDep:Landroid/nfc/tech/IsoDep;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->getTag()Landroid/nfc/Tag;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-static {v0}, Landroid/nfc/tech/NfcA;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcA;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lnet/sf/scuba/smartcards/IsoDepCardService;->isoDep:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->getHistoricalBytes()[B

    move-result-object v0

    return-object v0

    :cond_2
    invoke-static {v0}, Landroid/nfc/tech/NfcB;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcB;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/sf/scuba/smartcards/IsoDepCardService;->isoDep:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->getHiLayerResponse()[B

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lnet/sf/scuba/smartcards/IsoDepCardService;->isoDep:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->getHistoricalBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public isConnectionLost(Ljava/lang/Exception;)Z
    .locals 3

    invoke-direct {p0, p1}, Lnet/sf/scuba/smartcards/IsoDepCardService;->isDirectConnectionLost(Ljava/lang/Throwable;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eq p1, v2, :cond_3

    invoke-direct {p0, v2}, Lnet/sf/scuba/smartcards/IsoDepCardService;->isDirectConnectionLost(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    move-object p1, v2

    goto :goto_0

    :cond_3
    return v0
.end method

.method public isExtendedAPDULengthSupported()Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    iget-object v0, p0, Lnet/sf/scuba/smartcards/IsoDepCardService;->isoDep:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->isExtendedLengthApduSupported()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Lnet/sf/scuba/smartcards/IsoDepCardService;->isoDep:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lnet/sf/scuba/smartcards/CardService;->state:I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    const-string v0, "Failed to connect"

    invoke-virtual {p0}, Lnet/sf/scuba/smartcards/IsoDepCardService;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lnet/sf/scuba/smartcards/IsoDepCardService;->isoDep:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v1}, Landroid/nfc/tech/IsoDep;->connect()V

    iget-object v1, p0, Lnet/sf/scuba/smartcards/IsoDepCardService;->isoDep:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v1}, Landroid/nfc/tech/IsoDep;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput v1, p0, Lnet/sf/scuba/smartcards/CardService;->state:I

    return-void

    :cond_1
    new-instance v1, Lnet/sf/scuba/smartcards/CardServiceException;

    invoke-direct {v1, v0}, Lnet/sf/scuba/smartcards/CardServiceException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Lnet/sf/scuba/smartcards/CardServiceException;

    invoke-direct {v2, v0, v1}, Lnet/sf/scuba/smartcards/CardServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public transmit(Lnet/sf/scuba/smartcards/CommandAPDU;)Lnet/sf/scuba/smartcards/ResponseAPDU;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/sf/scuba/smartcards/IsoDepCardService;->isoDep:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sf/scuba/smartcards/IsoDepCardService;->isoDep:Landroid/nfc/tech/IsoDep;

    invoke-virtual {p1}, Lnet/sf/scuba/smartcards/CommandAPDU;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/nfc/tech/IsoDep;->transceive([B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    new-instance v1, Lnet/sf/scuba/smartcards/ResponseAPDU;

    invoke-direct {v1, v0}, Lnet/sf/scuba/smartcards/ResponseAPDU;-><init>([B)V

    new-instance v0, Lnet/sf/scuba/smartcards/APDUEvent;

    const-string v5, "ISODep"

    iget v2, p0, Lnet/sf/scuba/smartcards/IsoDepCardService;->apduCount:I

    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Lnet/sf/scuba/smartcards/IsoDepCardService;->apduCount:I

    move-object v3, v0

    move-object v4, p0

    move-object v7, p1

    move-object v8, v1

    invoke-direct/range {v3 .. v8}, Lnet/sf/scuba/smartcards/APDUEvent;-><init>(Ljava/lang/Object;Ljava/io/Serializable;ILnet/sf/scuba/smartcards/CommandAPDU;Lnet/sf/scuba/smartcards/ResponseAPDU;)V

    invoke-virtual {p0, v0}, Lnet/sf/scuba/smartcards/CardService;->notifyExchangedAPDU(Lnet/sf/scuba/smartcards/APDUEvent;)V

    return-object v1

    :cond_0
    new-instance p1, Lnet/sf/scuba/smartcards/CardServiceException;

    const-string v0, "Failed response"

    invoke-direct {p1, v0}, Lnet/sf/scuba/smartcards/CardServiceException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lnet/sf/scuba/smartcards/CardServiceException;

    const-string v0, "Not connected"

    invoke-direct {p1, v0}, Lnet/sf/scuba/smartcards/CardServiceException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lnet/sf/scuba/smartcards/CardServiceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Lnet/sf/scuba/smartcards/CardServiceException;

    const-string v1, "Could not tranceive APDU"

    invoke-direct {v0, v1, p1}, Lnet/sf/scuba/smartcards/CardServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    throw p1
.end method
