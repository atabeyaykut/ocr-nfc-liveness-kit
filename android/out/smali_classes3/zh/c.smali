.class public final enum Lzh/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzh/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:[Lzh/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lzh/c;

    const-string v1, "PASSPORT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzh/c;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lzh/c;

    const-string v3, "ID_CARD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lzh/c;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lzh/c;

    const-string v5, "OTHER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lzh/c;-><init>(Ljava/lang/String;I)V

    const/4 v5, 0x3

    new-array v5, v5, [Lzh/c;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lzh/c;->a:[Lzh/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzh/c;
    .locals 1

    const-class v0, Lzh/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzh/c;

    return-object p0
.end method

.method public static values()[Lzh/c;
    .locals 1

    sget-object v0, Lzh/c;->a:[Lzh/c;

    invoke-virtual {v0}, [Lzh/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzh/c;

    return-object v0
.end method
