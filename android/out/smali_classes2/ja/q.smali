.class public final enum Lja/q;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lja/q;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lja/q;

.field public static final enum c:Lja/q;

.field public static final enum d:Lja/q;

.field public static final enum e:Lja/q;

.field public static final synthetic f:[Lja/q;


# instance fields
.field public final a:Llb/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lja/q;

    const-string v1, "kotlin/UByteArray"

    invoke-static {v1}, Llb/b;->e(Ljava/lang/String;)Llb/b;

    move-result-object v1

    const-string v2, "UBYTEARRAY"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lja/q;-><init>(Ljava/lang/String;ILlb/b;)V

    sput-object v0, Lja/q;->b:Lja/q;

    new-instance v1, Lja/q;

    const-string v2, "kotlin/UShortArray"

    invoke-static {v2}, Llb/b;->e(Ljava/lang/String;)Llb/b;

    move-result-object v2

    const-string v4, "USHORTARRAY"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lja/q;-><init>(Ljava/lang/String;ILlb/b;)V

    sput-object v1, Lja/q;->c:Lja/q;

    new-instance v2, Lja/q;

    const-string v4, "kotlin/UIntArray"

    invoke-static {v4}, Llb/b;->e(Ljava/lang/String;)Llb/b;

    move-result-object v4

    const-string v6, "UINTARRAY"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lja/q;-><init>(Ljava/lang/String;ILlb/b;)V

    sput-object v2, Lja/q;->d:Lja/q;

    new-instance v4, Lja/q;

    const-string v6, "kotlin/ULongArray"

    invoke-static {v6}, Llb/b;->e(Ljava/lang/String;)Llb/b;

    move-result-object v6

    const-string v8, "ULONGARRAY"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lja/q;-><init>(Ljava/lang/String;ILlb/b;)V

    sput-object v4, Lja/q;->e:Lja/q;

    const/4 v6, 0x4

    new-array v6, v6, [Lja/q;

    aput-object v0, v6, v3

    aput-object v1, v6, v5

    aput-object v2, v6, v7

    aput-object v4, v6, v9

    sput-object v6, Lja/q;->f:[Lja/q;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILlb/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llb/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p3}, Llb/b;->j()Llb/f;

    move-result-object p1

    const-string p2, "classId.shortClassName"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lja/q;->a:Llb/f;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lja/q;
    .locals 1

    const-class v0, Lja/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lja/q;

    return-object p0
.end method

.method public static values()[Lja/q;
    .locals 1

    sget-object v0, Lja/q;->f:[Lja/q;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lja/q;

    return-object v0
.end method
