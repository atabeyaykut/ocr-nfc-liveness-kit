.class public final enum Lyc/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lyc/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lyc/b;

.field public static final enum c:Lyc/b;

.field public static final enum d:Lyc/b;

.field public static final enum e:Lyc/b;

.field public static final enum f:Lyc/b;

.field public static final enum g:Lyc/b;

.field public static final synthetic h:[Lyc/b;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xe

    new-array v0, v0, [Lyc/b;

    new-instance v1, Lyc/b;

    const-string v2, "NO_ERROR"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lyc/b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lyc/b;->b:Lyc/b;

    aput-object v1, v0, v3

    new-instance v1, Lyc/b;

    const-string v2, "PROTOCOL_ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lyc/b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lyc/b;->c:Lyc/b;

    aput-object v1, v0, v3

    new-instance v1, Lyc/b;

    const-string v2, "INTERNAL_ERROR"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lyc/b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lyc/b;->d:Lyc/b;

    aput-object v1, v0, v3

    new-instance v1, Lyc/b;

    const-string v2, "FLOW_CONTROL_ERROR"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v3}, Lyc/b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lyc/b;->e:Lyc/b;

    aput-object v1, v0, v3

    new-instance v1, Lyc/b;

    const-string v2, "SETTINGS_TIMEOUT"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3, v3}, Lyc/b;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    new-instance v1, Lyc/b;

    const-string v2, "STREAM_CLOSED"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, v3}, Lyc/b;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    new-instance v1, Lyc/b;

    const-string v2, "FRAME_SIZE_ERROR"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3, v3}, Lyc/b;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    new-instance v1, Lyc/b;

    const-string v2, "REFUSED_STREAM"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3, v3}, Lyc/b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lyc/b;->f:Lyc/b;

    aput-object v1, v0, v3

    new-instance v1, Lyc/b;

    const-string v2, "CANCEL"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3, v3}, Lyc/b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lyc/b;->g:Lyc/b;

    aput-object v1, v0, v3

    new-instance v1, Lyc/b;

    const-string v2, "COMPRESSION_ERROR"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3, v3}, Lyc/b;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    new-instance v1, Lyc/b;

    const-string v2, "CONNECT_ERROR"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3, v3}, Lyc/b;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    new-instance v1, Lyc/b;

    const-string v2, "ENHANCE_YOUR_CALM"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3, v3}, Lyc/b;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    new-instance v1, Lyc/b;

    const-string v2, "INADEQUATE_SECURITY"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3, v3}, Lyc/b;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    new-instance v1, Lyc/b;

    const-string v2, "HTTP_1_1_REQUIRED"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3, v3}, Lyc/b;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    sput-object v0, Lyc/b;->h:[Lyc/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lyc/b;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyc/b;
    .locals 1

    const-class v0, Lyc/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyc/b;

    return-object p0
.end method

.method public static values()[Lyc/b;
    .locals 1

    sget-object v0, Lyc/b;->h:[Lyc/b;

    invoke-virtual {v0}, [Lyc/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyc/b;

    return-object v0
.end method
