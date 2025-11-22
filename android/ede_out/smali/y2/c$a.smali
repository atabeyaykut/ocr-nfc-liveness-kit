.class public final enum Ly2/c$a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lw6/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ly2/c$a;",
        ">;",
        "Lw6/c;"
    }
.end annotation


# static fields
.field public static final enum b:Ly2/c$a;

.field public static final enum c:Ly2/c$a;

.field public static final enum d:Ly2/c$a;

.field public static final enum e:Ly2/c$a;

.field public static final enum f:Ly2/c$a;

.field public static final enum g:Ly2/c$a;

.field public static final enum h:Ly2/c$a;

.field public static final synthetic j:[Ly2/c$a;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Ly2/c$a;

    const-string v1, "REASON_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ly2/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ly2/c$a;->b:Ly2/c$a;

    new-instance v1, Ly2/c$a;

    const-string v3, "MESSAGE_TOO_OLD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Ly2/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Ly2/c$a;->c:Ly2/c$a;

    new-instance v3, Ly2/c$a;

    const-string v5, "CACHE_FULL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Ly2/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Ly2/c$a;->d:Ly2/c$a;

    new-instance v5, Ly2/c$a;

    const-string v7, "PAYLOAD_TOO_BIG"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Ly2/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Ly2/c$a;->e:Ly2/c$a;

    new-instance v7, Ly2/c$a;

    const-string v9, "MAX_RETRIES_REACHED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Ly2/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v7, Ly2/c$a;->f:Ly2/c$a;

    new-instance v9, Ly2/c$a;

    const-string v11, "INVALID_PAYLOD"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Ly2/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v9, Ly2/c$a;->g:Ly2/c$a;

    new-instance v11, Ly2/c$a;

    const-string v13, "SERVER_ERROR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Ly2/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v11, Ly2/c$a;->h:Ly2/c$a;

    const/4 v13, 0x7

    new-array v13, v13, [Ly2/c$a;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Ly2/c$a;->j:[Ly2/c$a;

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

    iput p3, p0, Ly2/c$a;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ly2/c$a;
    .locals 1

    const-class v0, Ly2/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ly2/c$a;

    return-object p0
.end method

.method public static values()[Ly2/c$a;
    .locals 1

    sget-object v0, Ly2/c$a;->j:[Ly2/c$a;

    invoke-virtual {v0}, [Ly2/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ly2/c$a;

    return-object v0
.end method


# virtual methods
.method public final f()I
    .locals 1

    iget v0, p0, Ly2/c$a;->a:I

    return v0
.end method
