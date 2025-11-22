.class public final enum Lrc/f0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrc/f0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrc/f0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lrc/f0;

.field public static final enum c:Lrc/f0;

.field public static final enum d:Lrc/f0;

.field public static final enum e:Lrc/f0;

.field public static final enum f:Lrc/f0;

.field public static final synthetic g:[Lrc/f0;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Lrc/f0;

    new-instance v1, Lrc/f0;

    const-string v2, "TLS_1_3"

    const/4 v3, 0x0

    const-string v4, "TLSv1.3"

    invoke-direct {v1, v2, v3, v4}, Lrc/f0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lrc/f0;->b:Lrc/f0;

    aput-object v1, v0, v3

    new-instance v1, Lrc/f0;

    const-string v2, "TLS_1_2"

    const/4 v3, 0x1

    const-string v4, "TLSv1.2"

    invoke-direct {v1, v2, v3, v4}, Lrc/f0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lrc/f0;->c:Lrc/f0;

    aput-object v1, v0, v3

    new-instance v1, Lrc/f0;

    const-string v2, "TLS_1_1"

    const/4 v3, 0x2

    const-string v4, "TLSv1.1"

    invoke-direct {v1, v2, v3, v4}, Lrc/f0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lrc/f0;->d:Lrc/f0;

    aput-object v1, v0, v3

    new-instance v1, Lrc/f0;

    const-string v2, "TLS_1_0"

    const/4 v3, 0x3

    const-string v4, "TLSv1"

    invoke-direct {v1, v2, v3, v4}, Lrc/f0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lrc/f0;->e:Lrc/f0;

    aput-object v1, v0, v3

    new-instance v1, Lrc/f0;

    const-string v2, "SSL_3_0"

    const/4 v3, 0x4

    const-string v4, "SSLv3"

    invoke-direct {v1, v2, v3, v4}, Lrc/f0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lrc/f0;->f:Lrc/f0;

    aput-object v1, v0, v3

    sput-object v0, Lrc/f0;->g:[Lrc/f0;

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

    iput-object p3, p0, Lrc/f0;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lrc/f0;
    .locals 1

    const-class v0, Lrc/f0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lrc/f0;

    return-object p0
.end method

.method public static values()[Lrc/f0;
    .locals 1

    sget-object v0, Lrc/f0;->g:[Lrc/f0;

    invoke-virtual {v0}, [Lrc/f0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrc/f0;

    return-object v0
.end method
