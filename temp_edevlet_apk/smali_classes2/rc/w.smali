.class public final enum Lrc/w;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrc/w$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrc/w;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lrc/w;

.field public static final enum c:Lrc/w;

.field public static final enum d:Lrc/w;

.field public static final enum e:Lrc/w;

.field public static final enum f:Lrc/w;

.field public static final enum g:Lrc/w;

.field public static final synthetic h:[Lrc/w;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [Lrc/w;

    new-instance v1, Lrc/w;

    const-string v2, "HTTP_1_0"

    const/4 v3, 0x0

    const-string v4, "http/1.0"

    invoke-direct {v1, v2, v3, v4}, Lrc/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lrc/w;->b:Lrc/w;

    aput-object v1, v0, v3

    new-instance v1, Lrc/w;

    const-string v2, "HTTP_1_1"

    const/4 v3, 0x1

    const-string v4, "http/1.1"

    invoke-direct {v1, v2, v3, v4}, Lrc/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lrc/w;->c:Lrc/w;

    aput-object v1, v0, v3

    new-instance v1, Lrc/w;

    const-string v2, "SPDY_3"

    const/4 v3, 0x2

    const-string v4, "spdy/3.1"

    invoke-direct {v1, v2, v3, v4}, Lrc/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lrc/w;->d:Lrc/w;

    aput-object v1, v0, v3

    new-instance v1, Lrc/w;

    const-string v2, "HTTP_2"

    const/4 v3, 0x3

    const-string v4, "h2"

    invoke-direct {v1, v2, v3, v4}, Lrc/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lrc/w;->e:Lrc/w;

    aput-object v1, v0, v3

    new-instance v1, Lrc/w;

    const-string v2, "H2_PRIOR_KNOWLEDGE"

    const/4 v3, 0x4

    const-string v4, "h2_prior_knowledge"

    invoke-direct {v1, v2, v3, v4}, Lrc/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lrc/w;->f:Lrc/w;

    aput-object v1, v0, v3

    new-instance v1, Lrc/w;

    const-string v2, "QUIC"

    const/4 v3, 0x5

    const-string v4, "quic"

    invoke-direct {v1, v2, v3, v4}, Lrc/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lrc/w;->g:Lrc/w;

    aput-object v1, v0, v3

    sput-object v0, Lrc/w;->h:[Lrc/w;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lrc/w;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lrc/w;
    .locals 1

    const-class v0, Lrc/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lrc/w;

    return-object p0
.end method

.method public static values()[Lrc/w;
    .locals 1

    sget-object v0, Lrc/w;->h:[Lrc/w;

    invoke-virtual {v0}, [Lrc/w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrc/w;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lrc/w;->a:Ljava/lang/String;

    return-object v0
.end method
