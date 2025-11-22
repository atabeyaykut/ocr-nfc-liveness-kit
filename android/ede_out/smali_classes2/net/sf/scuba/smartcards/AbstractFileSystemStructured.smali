.class public abstract Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/scuba/smartcards/FileSystemStructured;


# static fields
.field public static final MF_ID:S = 0x3f00s


# instance fields
.field private fileInfo:Lnet/sf/scuba/smartcards/ISOFileInfo;

.field private length:I

.field private p2:I

.field private selectLe:I

.field private selectedFID:S

.field private service:Lnet/sf/scuba/smartcards/CardService;


# direct methods
.method public constructor <init>(Lnet/sf/scuba/smartcards/CardService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-short v0, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->selectedFID:S

    const/4 v1, -0x1

    iput v1, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->length:I

    iput v0, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->p2:I

    const/16 v0, 0x100

    iput v0, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->selectLe:I

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->fileInfo:Lnet/sf/scuba/smartcards/ISOFileInfo;

    iput-object p1, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->service:Lnet/sf/scuba/smartcards/CardService;

    return-void
.end method

.method public constructor <init>(Lnet/sf/scuba/smartcards/CardService;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-short v0, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->selectedFID:S

    const/4 v1, -0x1

    iput v1, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->length:I

    iput v0, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->p2:I

    const/16 v1, 0x100

    iput v1, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->selectLe:I

    const/4 v2, 0x0

    iput-object v2, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->fileInfo:Lnet/sf/scuba/smartcards/ISOFileInfo;

    iput-object p1, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->service:Lnet/sf/scuba/smartcards/CardService;

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0xc

    :goto_0
    iput p1, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->p2:I

    if-eqz p2, :cond_1

    const/16 v0, 0x100

    :cond_1
    iput v0, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->selectLe:I

    return-void
.end method

.method private createSelectFileAPDU(II[BI)Lnet/sf/scuba/smartcards/CommandAPDU;
    .locals 10

    if-nez p4, :cond_0

    new-instance p4, Lnet/sf/scuba/smartcards/CommandAPDU;

    const/4 v1, 0x0

    const/16 v2, -0x5c

    move-object v0, p4

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lnet/sf/scuba/smartcards/CommandAPDU;-><init>(IIII[B)V

    return-object p4

    :cond_0
    new-instance v0, Lnet/sf/scuba/smartcards/CommandAPDU;

    const/4 v4, 0x0

    const/16 v5, -0x5c

    move-object v3, v0

    move v6, p1

    move v7, p2

    move-object v8, p3

    move v9, p4

    invoke-direct/range {v3 .. v9}, Lnet/sf/scuba/smartcards/CommandAPDU;-><init>(IIII[BI)V

    return-object v0
.end method

.method private selectFile(SI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [B

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [B

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v0, 0x1

    aput-byte p1, v1, v0

    move-object p1, v1

    :goto_0
    invoke-direct {p0, p1, p2}, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->selectFile([BI)V

    return-void
.end method

.method private selectFile([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->p2:I

    iget v1, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->selectLe:I

    invoke-direct {p0, p2, v0, p1, v1}, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->createSelectFileAPDU(II[BI)Lnet/sf/scuba/smartcards/CommandAPDU;

    move-result-object p1

    iget-object p2, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->service:Lnet/sf/scuba/smartcards/CardService;

    invoke-virtual {p2, p1}, Lnet/sf/scuba/smartcards/CardService;->transmit(Lnet/sf/scuba/smartcards/CommandAPDU;)Lnet/sf/scuba/smartcards/ResponseAPDU;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/scuba/smartcards/ResponseAPDU;->getSW()I

    move-result p2

    invoke-virtual {p1}, Lnet/sf/scuba/smartcards/ResponseAPDU;->getData()[B

    move-result-object p1

    const/16 v0, -0x7000

    if-ne p2, v0, :cond_2

    new-instance p2, Lnet/sf/scuba/smartcards/ISOFileInfo;

    invoke-direct {p2, p1}, Lnet/sf/scuba/smartcards/ISOFileInfo;-><init>([B)V

    iput-object p2, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->fileInfo:Lnet/sf/scuba/smartcards/ISOFileInfo;

    iget-short p1, p2, Lnet/sf/scuba/smartcards/ISOFileInfo;->fid:S

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iput-short p1, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->selectedFID:S

    :cond_0
    iget p1, p2, Lnet/sf/scuba/smartcards/ISOFileInfo;->fileLength:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->length:I

    :cond_1
    return-void

    :cond_2
    new-instance p1, Lnet/sf/scuba/smartcards/CardServiceException;

    const-string v0, "File could not be selected."

    invoke-direct {p1, v0, p2}, Lnet/sf/scuba/smartcards/CardServiceException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method


# virtual methods
.method public getFileLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->length:I

    return v0
.end method

.method public getSelectedFID()S
    .locals 1

    iget-short v0, p0, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->selectedFID:S

    return v0
.end method

.method public abstract readBinary(II)[B
.end method

.method public selectAID([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->selectFile([BI)V

    return-void
.end method

.method public selectDFRelative(S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->selectFile(SI)V

    return-void
.end method

.method public selectEFRelative(S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->selectFile(SI)V

    return-void
.end method

.method public selectFile(S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->selectFile(SI)V

    return-void
.end method

.method public selectMF()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->selectFile(SI)V

    return-void
.end method

.method public selectParent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->selectFile(SI)V

    return-void
.end method

.method public selectPath([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->selectFile([BI)V

    return-void
.end method

.method public selectPathRelative([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    const/16 v0, 0x9

    invoke-direct {p0, p1, v0}, Lnet/sf/scuba/smartcards/AbstractFileSystemStructured;->selectFile([BI)V

    return-void
.end method
